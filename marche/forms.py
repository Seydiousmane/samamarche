from django import forms
from .models import Produit

class SearchForm(forms.Form):
    query = forms.CharField(widget= forms.TextInput
                           (attrs={'class':'form-control',
				                    'id':'some_id',
                                    'label':'',
                                    'placeholder': "Envie d'un légume frais ?"}), label='')