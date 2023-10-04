from django.contrib import admin
from . models import *

# Register your models here.

@admin.register(Categorie)
class CategorieAdmin(admin.ModelAdmin):
    list_display = ['nom', 'slug']
    prepopulated_fields = {'slug': ('nom',)}
    list_filter = ['sup_categorie', 'date_creation', 'date_maj']

@admin.register(SupCategorie)
class SupCategorieAdmin(admin.ModelAdmin):
    list_display = ['nom', 'slug']
    prepopulated_fields = {'slug': ('nom',)}
    list_filter = ['date_creation', 'date_maj']


@admin.register(Produit)
class ProduitAdmin(admin.ModelAdmin):
    list_display = ['nom', 'slug', 'prix', 'disponibilite', 'date_creation', 'date_maj']
    list_filter = ['categorie', 'disponibilite', 'date_creation', 'date_maj']
    list_editable = ['prix', 'disponibilite']
    prepopulated_fields = {'slug': ('nom',)}

@admin.register(Info)
class InfoAdmin(admin.ModelAdmin):
    list_display = ['adresse', 'email', 'telephone', 'description', 'for_business', 'free_liv']

@admin.register(Homeslide)
class HomeslideAdmin(admin.ModelAdmin):
    list_display = ['nom']
    
@admin.register(HoraireLivraison)
class HoraireLivraisonAdmin(admin.ModelAdmin):
    pass
