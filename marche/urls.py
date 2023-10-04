from django.urls import path
from . import views

app_name = 'marche'

urlpatterns = [
    path('', views.accueil, name='accueil'),
	path('search', views.post_search, name='post_search'),
	#path('<slug:categorie_slug>/', views.produits_par_categorie, name='produit_par_categorie'),
	path('<slug:supcategorie_slug>', views.produits_par_supcategorie, name='produit_par_supcategorie'),
	path('<int:id>/<slug:slug>', views.produit_detail, name='produit_detail'),
	

]