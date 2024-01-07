from django.db import models

class Student(models.Model):
    name = models.CharField(max_length = 255)
    address = models.CharField(max_length = 255)
    # fee = models.IntegerField()

  
class Task(models.Model):
    taskName = models.CharField(max_length = 255)
    startDate = models.DateField()
    startTime = models.TimeField()
    endDate = models.DateField()
    endTime = models.TimeField()
    category = models.CharField(max_length = 255)
    status = models.CharField(max_length = 255)
    description = models.TextField()