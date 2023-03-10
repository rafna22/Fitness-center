from django.shortcuts import render,redirect
from django.http import HttpResponseRedirect
from .models import *
import os
import random
import string
from django.conf import settings
from django.core.mail import send_mail
# Create your views here.

def home(request):
	return render(request,'index.html')

def about(request):
	return render(request,'about.html')

def service(request):
	query=serv_tab.objects.all()
	return render(request,'classes.html',{"data":query})

def single(request):	
	pid=request.GET['pid']
	query=serv_tab.objects.filter(id=pid)
	return render(request,'singlepage.html',{"data":query})


def details(request):
	if request.method =='POST':
		pid=request.GET['pid']
		name=request.POST['name']
		email=request.POST['email']
		phone=request.POST['phone']
		address=request.POST['address']
		pid=serv_tab.objects.get(id=pid)
		check=user_details.objects.filter(email=email)
		if check:
			pid=request.GET['pid']
			return render(request,'u_details.html',{"error":"already registered"},{'details':pid})
		else:
			user=user_details(name=name,email=email,phone=phone,address=address,servname=pid)
			user.save()

			return render(request,'index.html',{"success":"data saved"})
	else:
		pid=request.GET['pid']
		return render(request,'u_details.html',{'details':pid})


def contact(request):
	if request.method =='POST':
		name=request.POST['name']
		subject=request.POST['subject']
		email=request.POST['email']
		phone=request.POST['phone']
		message=request.POST['message']
		check=cont_tb.objects.filter(email=email)
		if check:
			return render(request,'contact.html',{"error":"email already taken"})
		else:
			data=cont_tb(name=name,subject=subject,email=email,phone=phone,message=message)
			data.save()


			x = ''.join(random.choices(name +string.digits,k=8))
			y = ''.join(random.choices(string.ascii_letters + string.digits,k=7))
			subject = 'welcome to Fitness 365 gym'
			message = f'Hi {name},thank you for visiting Fitness 365'
			email_from = settings.EMAIL_HOST_USER
			recipient_list = [email,]
			send_mail( subject,message,email_from,recipient_list)
		return render(request,'index.html',{'success':"data saved"})
	else:
		return render(request,'contact.html')


# def u_details(request):
	# if request.method=='POST':
# 		name=request.POST['name']
# 		phone=request.POST['phone']
# 		address=request.POST['address']
# 		pid=request.GET['pid']
# 		check=user_details.objects.filter(id=pid)
# 		if check:
# 			return render(request,'single.html',{"error":"already taken"})
# 		else:
# 			user=user_details(name=name,phone=phone)
# 			user.save()
# 			return render(request,'single.html')
# 	else:
# 		return render(request,'single.html')









##########################################################################################################
#########################################ADMIN#################################################

def ad_home(request):
	if request.session.has_key('myid'):
		return render(request,'admin/index.html')
	else:
		return render(request,'admin/login.html') 



def ad_register(request):
	if request.method=='POST':
		email=request.POST['email']
		password=request.POST['password']
		check=admintab.objects.filter(email=email)
		if check:
			return render(request,'admin/register.html',{"error":"email already taken"})
		else:
			user=admintab(email=email,password=password)
			user.save()
			return render(request,'admin/index.html')
	else:
		return render(request,'admin/register.html')

			# return render(request,'admin/register.html')


def ad_login(request):
	if request.method=='POST':
		email=request.POST['email']
		password=request.POST['password']
		check=admintab.objects.filter(email=email,password=password)
		if check:
			for x in check:
				request.session['myid']=x.id
				# request.session['myname']=x.name
			return render(request,'admin/index.html',{"success":"logged in"})
		else:
			return render(request,'admin/login.html',{"error":"invalid details"})
	else:
		return render(request,'admin/login.html') 

def ad_logout(request):
	if request.session.has_key('myid'):
		del request.session['myid']
		# del request.session['myname']
		return HttpResponseRedirect('/adindex/')
	else:
		return redirect('/adindex/')



def ad_form(request):
	if request.method=='POST':
		sname=request.POST['name']
		simage=request.FILES['image']
		sdescription=request.POST['description']
		check=serv_tab.objects.filter(name=sname)
		if check:
			return render(request,'admin/forms.html',{"error":"already registered product"})
		else:
			user=serv_tab(name=sname,image=simage,desc=sdescription)
			user.save()
			return render(request,'admin/forms.html',{"success":"product saved"})
	else:
		return render(request,'admin/forms.html')

def ad_table(request):
	data=serv_tab.objects.all()
	return render(request,'admin/table.html',{'datas':data})
	# return render(request,'admin/table.html')



def ad_update(request):
	if request.method=='POST':
		name=request.POST['name']
		description=request.POST['description']
		regid=request.GET['regid']
		imgval=request.POST['imgup']
		if imgval=="yes":
			image=request.FILES['image']
			oldrec=serv_tab.objects.filter(id=regid)
			updrec=serv_tab.objects.get(id=regid)
			for x in oldrec:
				imgurl=x.image.url
				pathtoimage=os.path.dirname(os.path.dirname(os.path.abspath(__file__)))+imgurl
				if os.path.exists(pathtoimage):
					os.remove(pathtoimage)
					print('successfully deleted')
			updrec.image=image
			updrec.save()


		data=serv_tab.objects.filter(id=regid).update(name=name,desc=description)
		return redirect('/adtable/')
	else:
		regid=request.GET['regid']
		data=serv_tab.objects.filter(id=regid)
		return render(request,'admin/update.html',{'data':data})


def ad_delete(request):
	regid=request.GET['regid']
	data=serv_tab.objects.filter(id=regid).delete()
	return redirect('/adtable/')

def ad_usertab(request):
	data=user_details.objects.all()
	return render(request,'admin/usertab.html',{'datas':data})















