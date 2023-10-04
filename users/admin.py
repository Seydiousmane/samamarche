from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin

from .models import User, UserManager
from .forms import UserCreationForm, UserChangeForm

from phonenumber_field.modelfields import PhoneNumberField
from phonenumber_field.widgets import PhoneNumberInternationalFallbackWidget, PhoneNumberPrefixWidget

# Register your models here.

class UserAdmin(BaseUserAdmin):
    form = UserChangeForm
    add_form = UserCreationForm

    list_display = ('email', 'prenom', 'nom', 'telephone', 'is_staff',  'is_superuser', 'is_newsletter', 'by_phone')
    list_filter = ('is_superuser', 'is_newsletter', 'by_phone')

    fieldsets = (
        (None, {'fields': ('email', 'is_staff', 'is_superuser', 'is_newsletter', 'is_cgu', 'by_phone', 'password')}),
        ('Personal info', {'fields': ('prenom', 'nom', 'telephone')}),
        ('Groups', {'fields': ('groups',)}),
        ('Permissions', {'fields': ('user_permissions',)}),
    )
    add_fieldsets = (
        (None, {'fields': ('email', 'is_staff', 'is_superuser', 'password1', 'password2')}),
        ('Personal info', {'fields': ('nom','prenom', 'telephone')}),
        ('Groups', {'fields': ('groups',)}),
        ('Permissions', {'fields': ('user_permissions',)}),
    )

    search_fields = ('email', 'prenom', 'nom', 'telephone')
    ordering = ('email',)
    filter_horizontal = ()


admin.site.register(User, UserAdmin)
