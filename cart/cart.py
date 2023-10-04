from django.conf import settings
from marche.models import Produit
from .forms import CartProduitForm
from coupons.models import Coupon
from decimal import Decimal

class Cart(object):

    def __init__(self, request):
        """
        Initialize the cart.
        """
        self.session = request.session
        cart = self.session.get(settings.CART_SESSION_ID)
        if not cart:
            #Save an empty cart in the session
            cart = self.session[settings.CART_SESSION_ID] = {}
        self.cart = cart
        self.coupon_id = self.session.get('coupon_id')

    @property
    def coupon(self):
        if self.coupon_id:
            return Coupon.objects.get(id=self.coupon_id)
        return None

    def get_reduction(self):
        if self.coupon:
            return (self.coupon.reduction / 100) * self.get_prix_total()
        return 0

    def get_prix_total_apres_reduction(self):
        return int(self.get_prix_total() - self.get_reduction())
        

    
    def add(self, produit, quantite=1, update_quantite=False):
        """
        Add a product to the cart or update its quantity
        """
      
        produit_id = str(produit.id)

        #produit_dispo = produit.disponibilite
        if produit_id not in self.cart:
            self.cart[produit_id] = {
                'quantite': 0,
                'prix': str(produit.prix)
            }
        
        if update_quantite:
            self.cart[produit_id]['quantite'] = quantite
        else:
            self.cart[produit_id]['quantite'] += quantite

        self.save()


    #Funtion to delete no available product in the cart
    def supp_no_available(self):
        cart = self.cart
        produit_ids = self.cart.keys()
        #Get the product objects and add them to the cart
        produits = Produit.objects.filter(id__in=produit_ids)
        #cart = self.cart.copy()
        for prod in produits:
            if prod.disponibilite == False:
                prod = str(prod.id)
                del self.cart[prod]
                #self.cart.pop(prod)
                self.session.save()


    #Auto-update all unit price in the cart
    def maj_prices(self):
        cart = self.cart
        produit_ids = self.cart.keys()
        #Get the product objects and add them to the cart
        produits = Produit.objects.filter(id__in=produit_ids)
        #cart = self.cart.copy()
        for prod in produits:
            prix = prod.prix
            prod = str(prod.id)
            self.cart[prod]['prix'] = prix
            self.session.save()
            

    def maj_cart(self, produit, quantite=1, update_quantite=False):
        """
        Add a product to the cart or update its quantity
        """
        produit_id = str(produit.id)
        
        if produit_id in self.cart:
            self.cart[produit_id] = {
                'quantite': 0,
                'prix': str(produit.prix)
            }
        
        if update_quantite:
            self.cart[produit_id]['quantite'] = quantite
        else:
            self.cart[produit_id]['quantite'] += quantite
        self.save()


    def save(self):
        self.session.modified = True


    def remove(self, produit):
        """
        Remove a product from the cart
        """
        produit_id = str(produit.id)
        if produit_id in self.cart:
            del self.cart[produit_id]
            self.save()


    def __iter__(self):
        """
        Iterate over the items in the cart and get the products
        from the database
        """
        produit_ids = self.cart.keys()
        #Get the product objects and add them to the cart
        produits = Produit.objects.filter(id__in=produit_ids)
        cart = self.cart.copy()
        for produit in produits:
            cart[str(produit.id)]['produit'] = produit
            
        for item in cart.values():
            item['prix_total'] = int(item['prix']) * int(item['quantite'])
            yield item

    def __len__(self):
        return sum(item['quantite'] for item in self.cart.values())

    def get_prix_total(self):
        return sum(int(item['prix']) * int(item['quantite']) for item in self.cart.values())

    def clear(self):
        #Remove cart from session
        del self.session[settings.CART_SESSION_ID]
        self.save()

