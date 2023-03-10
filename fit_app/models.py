from django.db import models

# Create your models here

class admintab(models.Model):
    email=models.CharField(max_length=200)
    password=models.CharField(max_length=100)

class cont_tb(models.Model):
	name=models.CharField(max_length=100)
	email=models.CharField(max_length=200)
	phone=models.CharField(max_length=100)
	subject=models.CharField(max_length=200)
	message=models.CharField(max_length=300)

class serv_tab(models.Model):
	image=models.ImageField(upload_to='product/')
	name=models.CharField(max_length=300)
	desc=models.TextField()


class user_details(models.Model):
	servname=models.ForeignKey(serv_tab, on_delete=models.CASCADE)
	name=models.CharField(max_length=100)
	email=models.CharField(max_length=200)
	phone=models.CharField(max_length=100)
	address=models.TextField()













