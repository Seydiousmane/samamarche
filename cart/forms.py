from django import forms
from django.core.validators import MinValueValidator, MaxValueValidator

class CartProduitForm(forms.Form):
    quantite = forms.IntegerField(initial = 1, validators=[MinValueValidator(1),
                                       MaxValueValidator(100)], widget=forms.TextInput(attrs={'min':1,'max': '100','type': 'number'}))
    update_qt = forms.BooleanField(required=False, initial=False, widget=forms.HiddenInput)