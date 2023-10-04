from django.contrib import admin
from .models import Coupon
# Register your models here.

class CouponAdmin(admin.ModelAdmin):
    list_display = ['code', 'date_debut', 'date_fin', 'reduction', 'active']
    list_filter = ['active', 'date_debut', 'date_fin']
    search_fields = ['code']
admin.site.register(Coupon, CouponAdmin)