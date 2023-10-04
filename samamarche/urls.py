"""samamarche URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include

from django.contrib.auth import views as auth_views
from users import views as user_views

from users import views

#from users.views import RegistrationView, ProfileView

urlpatterns = [
    path('admin/', admin.site.urls),

    path('', include('marche.urls')),

    path('cart/', include('cart.urls')),

    path('commandes/', include('commandes.urls')),

    path('coupons/', include('coupons.urls')),

    #path('register/', user_views.register, name='register'),
    #path('profile/', user_views.profile, name='profile'),
    #path('login/', auth_views.LoginView.as_view(template_name='users/login.html'), name='login'),
    #path('logout/', auth_views.LogoutView.as_view(template_name='users/logout.html'), name='logout'),
    #path('commandes/login', auth_views.LoginView.as_view(template_name='users/login.html'), name='login'),

    #path('register/', RegistrationView.as_view(), name='register'),
    path('register/', user_views.register, name='register'),
    #path('accounts/profile/', ProfileView.as_view(), name='profile'),
    path('accounts/profile', user_views.profile, name='profile'),
    #path('accounts/login/', auth_views.LoginView.as_view(template_name='users/login.html'), name='login'),
    path('accounts/login/', user_views.signin, name='login'),
    path('accounts/logout/', auth_views.LogoutView.as_view(), name='logout'),

    #path('password_change/', auth_views.PasswordChangeView.as_view(template_name='users/password_change_form.html'), name='password_change'),
    path('accounts/password_change/', user_views.change_password, name='password_change'),
    #path('password_change/done/', auth_views.PasswordChangeDoneView.as_view(template_name='users/password_change_done.html'), name='password_change_done'),
    path('password_change/done/', user_views.change_password_done, name='password_change_done'),

    #path('password_reset/', auth_views.PasswordResetView.as_view(template_name='users/password_reset_form.html'), name='password_reset'),
    path('password_reset/', user_views.password_reset_request, name='password_reset'),
    path('password_reset_instructions/', user_views.instructions_reset_page, name='passwordinstructions'),
    path('password_reset/done/', auth_views.PasswordResetDoneView.as_view(template_name='users/password_reset_done.html'), name='password_reset_done'),
    #path('reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(template_name='users/password_reset_confirm.html'), name='password_reset_confirm'),
    path('reset/<uidb64>/<token>/', user_views.password_reset_confirme, name='password_reset_confirm'),
    
    path('reset/done/', auth_views.PasswordResetCompleteView.as_view(template_name='users/password_reset_complete.html'), name='password_reset_complete'),

]
handler404 = 'marche.views.error_404'

handler500 = 'marche.views.error_500'

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

