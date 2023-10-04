from django import forms
from django.contrib.auth.models import Group
from django.contrib.auth.forms import ReadOnlyPasswordHashField
from django.core.validators import RegexValidator
from phonenumber_field.formfields import PhoneNumberField
from phonenumber_field.widgets import PhoneNumberInternationalFallbackWidget, PhoneNumberPrefixWidget
import re

from .models import User
class RegistrationForm(forms.ModelForm):
    phone_regex = RegexValidator(regex=r'^\+?1?\d{9,15}$', message="Phone number must be entered in the format: '+999999999'. Up to 15 digits allowed.")
    password = forms.CharField(min_length=8, label='Mot de passe', widget=forms.PasswordInput(attrs={'placeholder':'Mot de passe'}))
    telephone = forms.RegexField(
         regex = r'^\+?[1-9]\d{1,15}$',
        #regex = r'\+?\d{10,14}$',
        error_messages = {'required': 'Phone number required'},
        widget = forms.TextInput(attrs={'class': 'form-control'})
    )
    #PhoneNumberField(Widget=PhoneNumberPrefixWidget(attrs={'class': 'form-control'}))
    is_cgu = forms.BooleanField(label="J'ai lu et j'accepte les <a href=''> Conditions générales d'utilisation</a>")
    is_newsletter = forms.BooleanField(label="Je souhaite recevoir la newsletter avec les meilleurs offres", widget=forms.CheckboxInput(attrs={'checked': True}))
    by_phone = forms.BooleanField(label="Je souhaite recevoir des offres par sms", widget=forms.CheckboxInput(attrs={'checked': True,}))
    class Meta:
        model = User
        fields = ('prenom', 'nom', 'email', 'telephone', 'password', 'is_cgu', 'is_newsletter', 'by_phone')


    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['is_cgu'].required = True
        self.fields['is_newsletter'].required = False
        self.fields['by_phone'].required = False

        self.fields['prenom'].widget.attrs['placeholder'] = 'Prénom'
        self.fields['nom'].widget.attrs['placeholder'] = 'Nom'
        self.fields['email'].widget.attrs['placeholder'] = 'Adresse e-mail'
        self.fields['telephone'].widget.attrs['placeholder'] = '7X XXX XX XX'

        
    def save(self, commit=True):
        # Save the provided password in hashed format
        user = super().save(commit=False)
        user.set_password(self.cleaned_data["password"])
        if commit:
            user.save()
        return user

class UserCreationForm(forms.ModelForm):
    password1 = forms.CharField(label='Mot de passe', widget=forms.PasswordInput)
    password2 = forms.CharField(label='Confirmer votre mot de passe', widget=forms.PasswordInput)

    class Meta:
        model = User
        fields = ('email', 'prenom', 'nom', 'telephone', 'is_staff', 'is_superuser')

    def clean_password2(self):
        # Check that the two password entries match
        password1 = self.cleaned_data.get("password1")
        password2 = self.cleaned_data.get("password2")
        if password1 and password2 and password1 != password2:
            raise forms.ValidationError("Passwords don't match")
        return password2

    def save(self, commit=True):
        # Save the provided password in hashed format
        user = super().save(commit=False)
        user.set_password(self.cleaned_data["password1"])
        if commit:
            user.save()
        return user


class UserChangeForm(forms.ModelForm):
    password = ReadOnlyPasswordHashField()

    class Meta:
        model = User
        fields = ('email', 'nom', 'telephone', 'password', 'is_active', 'is_superuser')

    def clean_password(self):
        # Regardless of what the user provides, return the initial value.
        # This is done here, rather than on the field, because the
        # field does not have access to the initial value
        return self.initial["password"]


class UserUpdateForm(forms.ModelForm):
    
    class Meta:
        model = User
        fields = ['prenom', 'nom', 'telephone']


class SetPasswordForm(forms.Form):
    new_password1 = forms.CharField(widget=forms.PasswordInput)
    new_password2 = forms.CharField(widget=forms.PasswordInput)

    error_messages = {
    'password_mismatch': ("The two password fields didn't match."),
    }


    class Meta:
        model = User
        fields = ('password',)
    def __init__(self,*args, **kwargs):
        super(SetPasswordForm, self).__init__(*args, **kwargs)

        def clean(self):
            cleaned_data = super(SetPasswordForm, self).clean()

            return cleaned_data