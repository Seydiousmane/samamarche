from django.urls import path
from . import views

app_name = 'commandes'

urlpatterns = [
    path('creer', views.creer_commande, name='creer_commande'),
   
    path('ajax/load-quartiers', views.load_quartiers, name='ajax_load_quartiers'),
    path('mes-commandes', views.commandes_user, name='mes_commandes'),
    path('<int:commande_id>', views.commandes_detail, name='detail_commande')
]