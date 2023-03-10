from django.urls import path
from . import views

urlpatterns=[

path('',views.home),
path('about/',views.about),
path('contact/',views.contact),
path('service/',views.service),
path('single/',views.single),
path('details/',views.details),






###################################################################################################################
#######################################ADMIN########################################################################
path('adindex/',views.ad_home),
path('adregister/',views.ad_register),
path('adlogin/',views.ad_login),
path('adlogout/',views.ad_logout),
path('adtable/',views.ad_table),
path('adform/',views.ad_form),
path('adupdate/',views.ad_update),
path('addelete/',views.ad_delete),
path('aduser/',views.ad_usertab),









]



