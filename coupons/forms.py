from django import forms

class CouponApplyForm(forms.Form):
    code = forms.CharField(widget= forms.TextInput
                           (attrs={
                                    'label':'',
                                    'placeholder': "Entrer ici ?"}), label='')
    
    

        