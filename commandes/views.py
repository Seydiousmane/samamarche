from django.shortcuts import render, get_object_or_404, redirect
from .models import CommandeItem, Commande, Quartier
from .forms import CommandeCreationForm
from cart.cart import Cart
from django.contrib.auth.decorators import login_required
from django.views.generic import ListView, CreateView, UpdateView
from django.urls import reverse_lazy
from django.views import generic
from django.views.generic.detail import SingleObjectMixin
from django.conf import settings
from users.models import User
from .tasks import commande_cree
from marche.models import Info
from marche.forms import SearchForm
from phonenumber_field.formfields import PhoneNumberField
from phonenumber_field.widgets import PhoneNumberInternationalFallbackWidget, PhoneNumberPrefixWidget
# Create your views here.

info = Info.objects.all()[:1]
searchform = SearchForm
@login_required(login_url='login')
def creer_commande(request):
    cart = Cart(request)
    #commandes = Commande.objects.filter(utilisateur=request.user)[0]
    #if commandes.exists():
    user = request.user
    initial_data = {
            'prenom': request.user.prenom,
            'nom' : request.user.nom,
            'email': request.user.email,
            'telephone': request.user.telephone
    }
    if request.method == 'POST':

        form = CommandeCreationForm(request.POST or None)
        user = request.user
        if form.is_valid():
            commande = form.save(commit=False)
            commande.utilisateur = request.user
            commande = form.save(commit=False)
            #commande.save(commit=False)
            commandi = form.cleaned_data['quartier'].prix_livraison

            prix_livraison = 500

            mode_payment = request.POST.get('modes_de_payement')

            #commandi = cart.get_prix_total() + prix_livraison
            if mode_payment == 'payement_livraison':
                commande = form.save()
                for item in cart:
                    CommandeItem.objects.create(commande=commande,
                                                produit=item['produit'], 
                                                prix=item['prix'], 
                                                quantite=item['quantite'])
                                                
                # Clear the cart
                #cart.clear()
          
            #commande_cree.delay(commande.id)
            context = {
                'commande': commande,
                'cart': cart,
                'prenom': commandi,
                'info': info,
                'searchform': SearchForm,
            }
            return render(request, 'commandes/commande-cree.html', {'commande': commande, 'cart': cart, 'prenom': commande})

            if mode_payment == 'payement_intouch':
                pass
    else:
        initial_data = {
            'prenom': request.user.prenom,
            'nom' : request.user.nom,
            'email': request.user.email,
            'telephone': request.user.telephone
        }
        context = {
            'form': CommandeCreationForm(initial_data),
            'cart': cart,
            'info': info,
            'searchform': SearchForm,
        }
    return render(request, 'commandes/creer-commande.html', context)



def load_quartiers(request):
    departement_id = request.GET.get('departement')
    cities = Quartier.objects.filter(departement_id=departement_id).order_by('nom')
    return render(request, 'commandes/quartiers_dropdown_list_options.html', {'cities': cities})


@login_required(login_url='login')
def commandes_user(request):
    user = request.user
    cart = Cart(request)
    commandes = Commande.objects.filter(utilisateur=user)
    context = {
        'commandes_user': commandes,
        'user': user,
        'info': info,
        'searchform': SearchForm,
        'cart': cart,
    }
    return render(request, 'commandes/mes-commandes.html', context)


@login_required(login_url='login')
def commandes_detail(request, commande_id):
    user = request.user.email
    cart = Cart(request)
    if request.user.email == user:
        commande = get_object_or_404(Commande, id=commande_id, utilisateur=request.user)
        items = CommandeItem.objects.all().filter(commande__id=commande_id)
        context = {
            'commande': commande,
            'items': items,
            'searchform': SearchForm,
            'cart': cart,
            'info': info,
        }

        return render(request, 'commandes/details.html', context)
    else:
        return redirect('marche:accueil')
