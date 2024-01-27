from knox.auth import TokenAuthentication
from .serializers import UserSerializer
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response

class userViewSet(APIView):
    authentication_classes = [TokenAuthentication]


    def get(self, request, *args, **kwargs):
        if self.request.auth is not None:
            user = self.request.auth.user
            userInstance = UserSerializer(instance=user)
            return Response({"data": userInstance.data}, status=status.HTTP_200_OK)

        else:
            return Response({"error": "Authentication failed"}, status=status.HTTP_401_UNAUTHORIZED)




    def put(self, request, *args, **kwargs):
        if self.request.auth is not None:
            user = self.request.auth.user

            if 'oldpassword' in request.data:
                oldpassword = request.data.get('oldpassword')
                newpassword = request.data.get('password')
                
                passs = {"password" : newpassword}
               
                
                # Check if the provided old password matches the existing user password
                if user.check_password(oldpassword):
                    user.set_password(newpassword)
                    user.save()
                    return Response({"message": "Password updated successfully"}, status=status.HTTP_200_OK)
                    
                        
                else:
                    return Response({"error": "Incorrect old password"}, status=status.HTTP_400_BAD_REQUEST)
            else:
                userInstance = UserSerializer(instance=user, data=request.data, partial=True)
                if userInstance.is_valid():
                    userInstance.save()
                    return Response({"message": "User updated successfully"}, status=status.HTTP_200_OK)
                else:
                    return Response({"error": userInstance.errors}, status=status.HTTP_400_BAD_REQUEST)

        else:
            return Response({"error": "Authentication failed"}, status=status.HTTP_401_UNAUTHORIZED)
