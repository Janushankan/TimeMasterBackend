from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from django.http.response import JsonResponse
from rest_framework import generics, permissions, status
from rest_framework.response import Response
from TimeMaster.serializers import StudentSerializer, TaskSerializer
from TimeMaster.models import Student, Task
from datetime import date
from django.http import JsonResponse
from django.db.models import Count
from .models import Task
from knox.models import AuthToken
from .serializers import UserSerializer, RegisterSerializer
from django.contrib.auth import login
from rest_framework.authtoken.serializers import AuthTokenSerializer
from knox.views import LoginView as KnoxLoginView
from rest_framework.decorators import api_view, permission_classes, authentication_classes
from rest_framework.permissions import IsAuthenticated

@csrf_exempt
def studentApi(request,id=0):
    if request.method=='GET':
        student = Student.objects.all()
        student_serializer=StudentSerializer(student,many=True)
        return JsonResponse(student_serializer.data,safe=False)
    elif request.method=='POST':
        student_data=JSONParser().parse(request)
        student_serializer=StudentSerializer(data=student_data)
        if student_serializer.is_valid():
            student_serializer.save()
            return JsonResponse("Added Successfully",safe=False)
        return JsonResponse("Failed to Add",safe=False)
    elif request.method=='PUT':
        student_data=JSONParser().parse(request)
        student=Student.objects.get(id=id)
        student_serializer=StudentSerializer(student,data=student_data)
        if student_serializer.is_valid():
            student_serializer.save()
            return JsonResponse("Updated Successfully",safe=False)
        return JsonResponse("Failed to Update")
    elif request.method=='DELETE':
        student=Student.objects.get(id=id)
        student.delete()
        return JsonResponse("Deleted Successfully",safe=False)
    
@csrf_exempt
def taskApi(request,id=0):
    if request.method=='GET':
        task = Task.objects.all()
        task_serializer=TaskSerializer(task,many=True)
        return JsonResponse(task_serializer.data,safe=False)
    elif request.method=='POST':
        task_data=JSONParser().parse(request)
        task_serializer=TaskSerializer(data=task_data)
        if task_serializer.is_valid():
            task_serializer.save()
            return JsonResponse("Added Successfully",safe=False)
        return JsonResponse("Failed to Add",safe=False)
    elif request.method=='PUT':
        task_data=JSONParser().parse(request)
        task=Task.objects.get(id=id)
        task_serializer=TaskSerializer(task,data=task_data)
        if task_serializer.is_valid():
            task_serializer.save()
            return JsonResponse("Updated Successfully",safe=False)
        return JsonResponse("Failed to Update")
    elif request.method=='DELETE':
        task=Task.objects.get(id=id)
        task.delete()
        return JsonResponse("Deleted Successfully",safe=False)
    
def Home_view(request):
    if request.method == 'GET':
        completed_task_count = Task.objects.filter(status='COMPLETED').count()
        ongoing_task_count = Task.objects.filter(status='RUNNING').count()
        failed_count = Task.objects.filter(status="FAILED").count()

        all_tasks = Task.objects.all()
        current_year = date.today().year
        task_current_year = all_tasks.filter(startDate__year=current_year)

        tasks_by_month = task_current_year.values('startDate__month', 'status').annotate(task_count=Count('id'))

        result = {}

    for month in range(1, 13):
        result[month] = {'completed': 0, 'running': 0, 'failed': 0}

    for task_data in tasks_by_month:
        month = task_data['startDate__month']
        status = task_data['status']
        task_count = task_data['task_count']

        if status == 'COMPLETED':
            result[month]['completed'] += task_count
        elif status == 'RUNNING':
            result[month]['running'] += task_count
        else:
            result[month]['failed'] += task_count

    data = {
        'completed_task_count': completed_task_count,
        'ongoing_task_count': ongoing_task_count,
        'failed_count': failed_count,
        'graph': result
    }

    return JsonResponse(data)

# Register API
class RegisterAPI(generics.GenericAPIView):
    serializer_class = RegisterSerializer
    
    def post(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user = serializer.save()
        return Response({
            "user": UserSerializer(user, context=self.get_serializer_context()).data,
            "token": AuthToken.objects.create(user)[1]
            
        })

# Login API
class LoginAPI(KnoxLoginView):
    permission_classes = (permissions.AllowAny,)

    def post(self, request, format=None):
        serializer = AuthTokenSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)

        user = serializer.validated_data['user']
        login(request, user)

        # Call the parent class's post method to generate the token response
        return super(LoginAPI, self).post(request, format=None)

@api_view(['POST'])
@permission_classes([IsAuthenticated])
def check_user(request):
    try:
        return Response({
            "details": "Token is valid"
        }, status=status.HTTP_200_OK)
    except KeyError:
        return Response({
            "details": "Token is invalid"
        }, status=status.HTTP_400_BAD_REQUEST)