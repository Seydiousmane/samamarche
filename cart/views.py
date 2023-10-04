from django.shortcuts import render, get_object_or_404, redirect
from django.http import HttpResponseRedirect, HttpResponse
from django.views.decorators.http import require_POST
from marche.models import Produit, Info, HoraireLivraison
from .cart import Cart
from .forms import CartProduitForm
from marche.forms import SearchForm
from django.http import JsonResponse
from users.models import User
from coupons.forms import CouponApplyForm
from django.core.serializers.json import DjangoJSONEncoder
from django.core import serializers
import json
from django.forms.models import model_to_dict
from django.conf import settings
from django.contrib import messages
# Create your views here.
#Informations
info = Info.objects.all()[:1]
searchform = SearchForm()



@require_POST
def ajouter_cart(request, produit_id):
    cart = Cart(request)
    carte = request.session.get(settings.CART_SESSION_ID)
    #produit = get_object_or_404(Produit, id=produit_id)
    produit = Produit.objects.get(id=produit_id)
    #cart = serializers.serialize('json', [Cart]) 
    form = CartProduitForm(request.POST)
    if request.method == 'POST' and request.is_ajax():
        if form.is_valid():
            cd = form.cleaned_data
            cart.add(produit=produit,
                    quantite=cd['quantite'],
                    update_quantite=cd['update_qt']
                    )
    
    #carte = serializers.serialize('json', cart)
    message = 'Le produit est ajouté avec succès'
    return JsonResponse({'status': 'success', 'message':message})
    #return redirect(request.META.get('HTTP_REFERER'))


def update_cart(request, produit_id):
    cart = Cart(request)
    produit = get_object_or_404(Produit, id=produit_id)
    form = CartProduitForm(request.POST)
    if request.method == 'POST' and request.is_ajax():
        if form.is_valid():
            cd = form.cleaned_data
            cart.maj_cart(produit=produit,
                    quantite=cd['quantite'],
                    update_quantite=cd['update_qt']
                    )
    return JsonResponse({'status': 'success'})


def supprimer_cart(request, produit_id):
    cart = Cart(request)
    produit = get_object_or_404(Produit, id=produit_id)
    cart.remove(produit)
    return redirect('cart:cart_detail')

"""
def supprimer_cart(request, produit_id):
    cart = Cart(request)
    produit = get_object_or_404(Produit, id=produit_id)
    cart.remove(produit)
    return JsonResponse({'status': 'success'})
"""

def cart_detail(request):
    cart = Cart(request)
    user = request.user
    cart.supp_no_available()
    cart.maj_prices()
    for item in cart:
        
        itemer = item['produit'].disponibilite
        item['update_quantite_form'] = CartProduitForm(
        initial={'quantite': item['quantite'],
        'update_qt': True})
    coupon_apply_form = CouponApplyForm()
    context = {
        'cart': cart,
        'itemer': cart,
        'user': user,
        'info': info,
        'searchform': searchform,
        'coupon_apply_form': coupon_apply_form,
        'horaire_livraison': HoraireLivraison.objects.all()[:1]
    }
    return render(request, 'cart/cart_detail.html', context)
