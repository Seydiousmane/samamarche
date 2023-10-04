from django.urls import path
from . import views

app_name = 'cart'
urlpatterns = [
    path('cart', views.cart_detail, name='cart_detail'),
    path('add/<int:produit_id>/', views.ajouter_cart, name='cart_add'),
    path('update/<int:produit_id>/', views.update_cart, name='cart_update'),
    
    
    path('remove/<int:produit_id>', views.supprimer_cart, name='cart_remove'),
]