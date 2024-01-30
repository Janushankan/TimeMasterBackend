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
    color = models.CharField(max_length=200, null=True)
    class Task(models.Model):
        STATUS_CHOICES = [
        ('completed', 'Completed'),
        ('ongoing', 'Ongoing'),
        ('pending', 'Pending'),
    ]
        
        title = models.CharField(max_length=200)
        status = models.CharField(max_length=10, choices=STATUS_CHOICES)
        created_at = models.DateTimeField(auto_now_add=True)
        updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title