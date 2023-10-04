from django.db import models
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager, PermissionsMixin
from django.contrib.auth import get_user_model
from phonenumber_field.modelfields import PhoneNumberField
from django.utils import timezone
# Create your models here.


class UserManager(BaseUserManager):
    use_in_migrations = True

    def _create_user(self, email, prenom, nom, telephone, password, **extra_fields):
            values = [email, prenom, nom, telephone]
            field_value_map = dict(zip(self.model.REQUIRED_FIELDS, values))
            for field_nom, value in field_value_map.items():
                if not value:
                    raise ValueError('The {} value must be set'.format(field_nom))
            
            email = self.normalize_email(email)
            user = self.model(
                email=email,
                nom=nom,
                prenom=prenom,
                telephone=telephone,
                **extra_fields
            )
            user.set_password(password)
            user.save(using=self._db)
            return user

    def create_user(self, email, prenom, nom, telephone, password=None, **extra_fields):
        extra_fields.setdefault('is_staff', False)
        extra_fields.setdefault('is_superuser', False)
        return self._create_user(email, prenom, nom, telephone, password, **extra_fields)

    def create_superuser(self, email, prenom, nom, telephone, password=None, **extra_fields):
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)

        if extra_fields.get('is_staff') is not True:
            raise ValueError('Superuser must have is_staff=True.')
        if extra_fields.get('is_superuser') is not True:
            raise ValueError('Superuser must have is_superuser=True.')

        return self._create_user(email, prenom, nom, telephone, password, **extra_fields)

class User(AbstractBaseUser, PermissionsMixin):
    email = models.EmailField(unique=True)
    prenom = models.CharField(max_length=150)
    nom = models.CharField(max_length=150)
    telephone = PhoneNumberField()
    #date_of_birth = models.DateField(blank=True, null=True)
    #picture = models.ImageField(blank=True, null=True)
    is_staff = models.BooleanField(default=False)
    is_active = models.BooleanField(default=True)
    is_newsletter = models.BooleanField(default=True)
    is_cgu = models.BooleanField(default=False)
    by_phone = models.BooleanField(default=True)
    date_joined = models.DateTimeField(default=timezone.now)
    last_login = models.DateTimeField(null=True)

    objects = UserManager()

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['prenom', 'nom', 'telephone', 'is_cgu']

    def get_full_name(self):
        return self.nom

    def get_short_name(self):
        return self.nom.split()[0]