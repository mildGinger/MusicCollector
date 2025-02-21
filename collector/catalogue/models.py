from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.

class Artist(models.Model):
    name = models.CharField(max_length=100)
    country = models.CharField(max_length=100)
    
    def __str__(self):
        return self.name
    
    
class Album(models.Model):
    name = models.CharField(max_length=100)
    release_date = models.DateField()
    genre = models.CharField(max_length=100)
    producer_name = models.CharField(max_length=100)
    record_label_name = models.CharField(max_length=100)
    comments = models.TextField()
    artist = models.ForeignKey(Artist, on_delete=models.CASCADE, related_name='albums')
    
    def __str__(self):
        return self.name
        