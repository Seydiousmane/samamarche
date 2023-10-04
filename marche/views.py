from django.shortcuts import render, get_object_or_404
from .models import Produit, Categorie, SupCategorie, Info, Homeslide
from cart.forms import CartProduitForm
from cart.cart import Cart
from .forms import SearchForm
from django.contrib.postgres.search import SearchVector

# Create your views here.
searchform = SearchForm()

#Informations


def accueil(request, categorie_slug=None):
    #legume = Produit.objects.filter(categorie.nom=='legumes')
    #Get the fruits
    fruits = Produit.objects.all().filter(disponibilite=True, categorie__sup_categorie__slug='fruits')[:7]

    #Recuperer les legumes
    legumes = Produit.objects.all().filter(disponibilite=True, categorie__sup_categorie__slug='legumes')[:7]

    #Recuperer les poissons
    poissons = Produit.objects.all().filter(disponibilite=True, categorie__sup_categorie__slug='poissons')[:7]

    #Recuperer les viandes
    viandes = Produit.objects.all().filter(disponibilite=True, categorie__sup_categorie__slug='viandes')[:7]

    #Recuperer les produits epiciers
    epicerie = Produit.objects.all().filter(disponibilite=True, categorie__sup_categorie__slug='epicerie')[:7]

    #Recuperer les produits de beauté
    beaute = Produit.objects.all().filter(disponibilite=True, categorie__sup_categorie__slug='beaute')[:7]

    #Recuperer les produits de bébé
    bebe = Produit.objects.all().filter(disponibilite=True, categorie__sup_categorie__slug='bebe')[:7]

    #Recuperer les produits de vaisselle
    vaisselle = Produit.objects.all().filter(disponibilite=True, categorie__sup_categorie__slug='vaisselle')[:7]
   
    #Categories
    categories = Categorie.objects.all()

    cat_legumes = SupCategorie.objects.filter(slug='legumes')
    cat_fruits = SupCategorie.objects.filter(slug='fruits')
    cat_poissons = SupCategorie.objects.filter(slug='poissons')
    cat_viandes = SupCategorie.objects.filter(slug='viandes')
    cat_epicerie = SupCategorie.objects.filter(slug='epicerie')
    cat_beaute = SupCategorie.objects.filter(slug='beaute')
    cat_bebe = SupCategorie.objects.filter(slug='bebe')
    cat_vaisselle = SupCategorie.objects.filter(slug='vaisselle')
   
    #Slides
    homeslides = Homeslide.objects.all()

    info = Info.objects.all()
    #Cart add product form
    cart_produit_form = CartProduitForm()
    cart = Cart(request)

    context = {
        'homeslides' : homeslides,
        'legumes': legumes,
        'fruits': fruits,
        'poissons': poissons,
        'viandes': viandes,
        'epiecerie': epicerie,
        'bebe': bebe,
        'beaute': beaute,
        'vaisselle': vaisselle,
        'cart_produit_form': cart_produit_form,
        'cart': cart,
        'categories': categories,
        'searchform': searchform,
        'info': info,
        'cat_legumes': cat_legumes,
        'cat_fruits': cat_fruits,
        'cat_poissons': cat_poissons,
        'cat_viandes': cat_viandes,
        'cat_epicerie': cat_epicerie,
        'cat_bebe': cat_bebe,
        'cat_beaute': cat_beaute,
        'cat_vaisselle': cat_vaisselle,
        'info': info
    }

    
    return render(request, 'marche/main.html', context)


def produits_par_categorie(request, categorie_slug=None):
    categorie = None
    categories = Categorie.objects.all()
    produits = Produit.objects.filter(disponibilite=True)
    info = Info.objects.all()
    if categorie_slug:
        categorie = get_object_or_404(Categorie, slug=categorie_slug)
        produits = produits.filter(categorie=categorie)
    
    #Cart add product form
    cart_produit_form = CartProduitForm()
    cart = Cart(request)

    context = {
        'categorie': categorie,
        'categories': categories,
        'produits': produits,
        'cart_produit_form_cat': cart_produit_form,
        'cart': cart,
        'info': info,
    }
    return render(request, 'marche/categorie.html', context)
    

def produits_par_supcategorie(request, supcategorie_slug=None):
    supcategorie = None
    supcategories = SupCategorie.objects.all()
    categorie = Categorie.objects.all()
    produits = Produit.objects.filter(disponibilite=True)
    info = Info.objects.all()
    if supcategorie_slug:
        supcategorie = get_object_or_404(SupCategorie, slug=supcategorie_slug)
        categorie = categorie.filter(sup_categorie__slug=supcategorie_slug)
        produits = produits.filter(categorie__sup_categorie__slug=supcategorie_slug, disponibilite=True)
    
    #Cart add product form
    cart_produit_form = CartProduitForm()
    cart = Cart(request)

    context = {
        'supcategorie': supcategorie,
        'supcategories': supcategories,
        'categorie': categorie,

        'produits': produits,
        'cart_produit_form_cat': cart_produit_form,
        'cart': cart,
        'searchform': searchform,
        'info': info,
    }
    return render(request, 'marche/supcategorie.html', context)

def produit_detail(request, id, slug):
    cart = Cart(request)
    produit = get_object_or_404(Produit, id=id, slug=slug, disponibilite=True)
    cart_produit_form = CartProduitForm()
    info = Info.objects.all()
    context = {
        'produit': produit,
        'cart_produit_form_cat': cart_produit_form,
        'searchform': searchform,
        'cart': cart
    }
    return render(request, 'marche/detail.html', context)



#Search product
def post_search(request):
    cart = Cart(request)
    cart_produit_form = CartProduitForm()
    info = Info.objects.all()
    query = None
    results = []
    searchform = SearchForm()
    if 'query' in request.GET:
        form = SearchForm(request.GET)
        if form.is_valid():
            query = form.cleaned_data['query']
            results = Produit.objects.annotate(
                search = SearchVector('nom')
            ).filter(search=query, disponibilite=True)
    context = {
        'results': results,
        'cart': cart,
        'cart_produit_form': cart_produit_form,
        'searchform': searchform,
        'info': info,
        'query': query
    }
    return render(request, 'marche/recherche.html',context)


def error_404(request, exception):
        context = {}
        return render(request,'marche/404.html', context)
        

def error_500(request, *args, **argv):
        context = {}
        return render(request,'marche/500.html', context)