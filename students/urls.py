from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('update/<int:pk>/', views.update_student, name='update_student'),
    path('delete/<int:pk>/', views.delete_student, name='delete_student'),
]