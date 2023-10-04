from django.contrib import admin
from .models import Commande, CommandeItem, Departement, Quartier
# Register your models here.

class CommandeItemInline(admin.TabularInline):
    model = CommandeItem
    raw_id_fields = ['produit']

@admin.register(Commande)
class CommandeAdmin(admin.ModelAdmin):
    list_display = ['id', 'prenom', 'nom', 'email', 'telephone', 'indication', 'quartier', 'payement', 'date_creation', 'date_maj']
    list_filter = ['payement', 'date_creation', 'date_maj', 'etat']
    inlines = [CommandeItemInline]

admin.site.register(Departement)

@admin.register(Quartier)
class QuartierAdmin(admin.ModelAdmin):
    list_display = ['nom']
    list_filter = ['departement', 'date_creation', 'date_maj' ]

"""
@admin.register(Departement)
class DepartementAdmin(admin.ModelAdmin):
    list_display = ['nom']



@admin.register(Quartier)
class QuartierAdmin(admin.ModelAdmin):
    list_display = ['nom']
"""