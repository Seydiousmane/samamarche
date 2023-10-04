from django.shortcuts import render
import paydunya
from paydunya import Store

# Create your views here.

PAYDUNYA_ACCESS_TOKENS = {
  'PAYDUNYA-MASTER-KEY': "LSD2rfN7-7VU4-AaXB-EZgs-wO8PgD2JxmSE",
  'PAYDUNYA-PRIVATE-KEY': "test_private_7qCJ7RgA6UATGpvP5bhYhwdNZzs",
  'PAYDUNYA-TOKEN': "qzWppcw9WGSsGt5S78qG"
}

# Activer le mode 'test'. Le debug est à False par défaut
paydunya.debug = True

# Configurer les clés d'API
paydunya.API_keys = PAYDUNYA_ACCESS_TOKENS

infos = {
  'name': "Magasin Chez Samamarché", # Seul le nom est requis
  'tagline': "Manger bien",
  'postal_address': "Dakar Plateau - Etablissement kheweul",
  'phone_number': "777168363",
  'website_url': "127.0.0.1",
  'logo_url': ""
}

store = Store(**infos)



