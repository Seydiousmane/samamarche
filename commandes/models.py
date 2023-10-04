from django.db import models
from marche.models import Produit
from django.conf import settings
from phonenumber_field.modelfields import PhoneNumberField
# Create your models here.

class Departement(models.Model):
    nom = models.CharField(max_length=200)

    def __str__(self):
        return self.nom
        

class Quartier(models.Model):
    departement = models.ForeignKey(Departement, on_delete=models.CASCADE)
    nom = models.CharField(max_length=200)
    prix_livraison = models.IntegerField()
    date_creation = models.DateTimeField(auto_now_add=True)
    date_maj = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.nom
    
    def get_prix_livraison(self):
        return self.prix_livraison
        

class Commande(models.Model):
    STATUS_CHOICES = (
        ('Effectué', 'Commande effectuée'),
        ('En cours', 'Commande en cours de traitement'),
        ('Livrée', 'Commande livrée')
    )
    utilisateur = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    prenom = models.CharField(max_length=250)
    nom = models.CharField(max_length=100)
    email = models.EmailField()
    indication = models.CharField(max_length=250, null=True)
    departement = models.ForeignKey(Departement, on_delete=models.CASCADE)
    quartier = models.ForeignKey(Quartier, on_delete=models.CASCADE)
    telephone = PhoneNumberField()
    date_creation = models.DateTimeField(auto_now_add=True)
    date_maj = models.DateTimeField(auto_now=True)
    payement = models.BooleanField(default=False)
    etat = models.CharField(max_length=255,
                            choices=STATUS_CHOICES,
                            default='Commande effectuée')
    date_livraison = models.DateTimeField(null=True)

    
    class Meta:
        ordering = ('-date_creation',)

    def __str__(self):
        return 'Commande {}'.format(self.id)

    def get_cout_total(self):
        return sum(item.get_prix() for item in self.items.all())

    def get_commande(self):
        pass



class CommandeItem(models.Model):
    commande = models.ForeignKey(Commande, related_name='items', on_delete=models.CASCADE)
    produit = models.ForeignKey(Produit,
                                related_name='order_items',
                                on_delete=models.CASCADE
    )
    prix = models.IntegerField()
    quantite = models.IntegerField(default=1)

    def __str__(self):
        return '{}'.format(self.id)
    
    def get_prix(self):
        return self.prix * self.quantite
