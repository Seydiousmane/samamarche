from django.db import models
from django.core.validators import MinValueValidator, MaxValueValidator
# Create your models here.

class Coupon(models.Model):
    code = models.CharField(max_length=50, unique=True)
    date_debut = models.DateTimeField()
    date_fin = models.DateTimeField()
    reduction = models.IntegerField(default=0, validators=[MinValueValidator(0), MaxValueValidator(100)])
    active = models.BooleanField()

    def __str__(self):
        return self.code
    