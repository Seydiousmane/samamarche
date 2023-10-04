from django.db import models
from django.urls import reverse

# Create your models here.
class SupCategorie(models.Model):
    nom = models.CharField(max_length=50, db_index=True)
    slug = models.CharField(max_length=50, unique=True)
    image = models.ImageField(upload_to = 'supcategories/%y/%m/%d', blank=True)
    description = models.TextField()
    date_creation = models.DateTimeField(auto_now_add=True)
    date_maj = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ('date_maj',)
        verbose_name = 'supcategories'
        verbose_name_plural = 'supcategories'

    def __str__(self):
        return self.nom

class Categorie(models.Model):
    nom = models.CharField(max_length=200, db_index=True)
    slug = models.SlugField(max_length=200, unique=True)
    sup_categorie = models.ForeignKey(SupCategorie, related_name='categories', on_delete=models.CASCADE)
    image = models.ImageField(upload_to = 'categories/%y/%m/%d', blank=True)
    description = models.TextField()
    date_creation = models.DateTimeField(auto_now_add=True)
    date_maj = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ('date_creation',)
        verbose_name = 'categorie'
        verbose_name_plural = 'categories'

    def __str__(self):
        return self.nom

    def get_absolute_url(self):
        return reverse('marche:produit_par_categorie', args=[self.slug])

    def get_produits(self):
        return Produit.objects.filter(categorie=self)



class Produit(models.Model):
    categorie = models.ForeignKey(Categorie, related_name='produits', on_delete=models.CASCADE)
    nom = models.CharField(max_length=200, db_index=True)
    slug = models.SlugField(max_length=200, db_index=True)
    image = models.ImageField(upload_to = 'produits/%y/%m/%d', blank=True)
    description = models.CharField(max_length=200, default="Détails de...", null=True, blank=True)
    provenance = models.TextField(blank=True)
    prix = models.IntegerField()
    unite = models.CharField(max_length=30, blank=True)
    disponibilite = models.BooleanField(default=True)
    stock = models.IntegerField(default=1, null=True)
    date_creation = models.DateTimeField(auto_now_add=True)
    date_maj = models.DateTimeField(auto_now=True)
    
    class Meta:
        ordering = ('date_maj',)
        index_together = (('id', 'slug'),)

    def __str__(self):
        return self.nom

    def get_absolute_url(self):
        return reverse('marche:produit_detail', args=[self.id, self.slug])

    
class Info(models.Model):
    adresse = models.CharField(max_length=100)
    email = models.EmailField()
    telephone = models.CharField(max_length=30)
    description = models.TextField()
    for_business = models.TextField()
    free_liv = models.TextField()


class Homeslide(models.Model):
    nom = models.CharField(max_length=30, default='Slide name')
    image = models.ImageField(upload_to = 'homeslide/%y/%m/%d', blank=True)
    lien = models.CharField(max_length=20)

class HoraireLivraison(models.Model):
    date_prochaine_livraison = models.DateField()
