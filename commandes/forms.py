from django import forms
from .models import Commande, Quartier

STATUS_CHOICES = (
    ('payement_livraison', 'Payer à la livraison'),
    ('payement_intouch', 'Payer par Orange Money ou par carte bancaire'),
    ('cart_bancaire', 'Payer par carte bancaire ')
)

class CommandeCreationForm(forms.ModelForm):
    modes_de_payement = forms.ChoiceField(choices=STATUS_CHOICES, widget=forms.RadioSelect(attrs={'required': True, 'class':'payment_methods'}))
    class Meta:
        model = Commande
        fields = ('prenom', 'nom', 'email', 'telephone', 'departement', 'quartier', 'indication', 'modes_de_payement')

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['quartier'].queryset = Quartier.objects.none()
        self.fields['prenom'].widget.attrs['placeholder'] = 'Prénom'
        self.fields['nom'].widget.attrs['placeholder'] = 'Nom'
        self.fields['email'].widget.attrs['placeholder'] = 'Votre email'
        self.fields['telephone'].widget.attrs['placeholder'] = 'Numéro de téléphone'
        self.fields['indication'].widget.attrs['placeholder'] = "Exemple: En face de l'école Dior"
        self.fields['indication'].required = False
        
        if 'departement' in self.data:
            try:
                departement_id = int(self.data.get('departement'))
                self.fields['quartier'].queryset = Quartier.objects.filter(departement_id=departement_id).order_by('nom')
            except (ValueError, TypeError):
                pass  # invalid input from the client; ignore and fallback to empty City queryset
        elif self.instance.pk:
            self.fields['quartier'].queryset = self.instance.departement.quartier_set.order_by('nom') 

        if 'departement' not in self.data:
            try:
                departement_id = None
                self.fields['quartier'].queryset = Quartier.objects.none()
            except (ValueError, TypeError):
                pass  # invalid input from the client; ignore and fallback to empty City queryset