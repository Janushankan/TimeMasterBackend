from rest_framework import serializers
from TimeMaster.models import Task, Student
from django.contrib.auth.models import User

class StudentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Student
        fields = '__all__'

class TaskSerializer(serializers.ModelSerializer):
    class Meta:
        model = Task
        fields = '__all__'

#User Serializer
class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['username', 'password', 'is_superuser', 'first_name', 'last_name', 'email']
        extra_kwargs = {
            'password': {
                'write_only': True,
            },
        }

# Register Serializer
class RegisterSerializer(serializers.ModelSerializer):
    email = serializers.EmailField(write_only=True)

    class Meta:
        model = User
        fields = ('id', 'username', 'email', 'password')
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        user = User.objects.create_user(
            username=validated_data['username'],
            email=validated_data['email'],
            password=validated_data['password']
        )

        return user