# Generated by Django 2.2 on 2021-03-21 01:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('commandes', '0007_auto_20210307_0345'),
    ]

    operations = [
        migrations.AlterField(
            model_name='commande',
            name='etat',
            field=models.CharField(choices=[('Effectué', 'Commande effectuée'), ('En cours', 'Commande en cours de traitement'), ('Livrée', 'Commande livrée')], default='Commande effectuée', max_length=10),
        ),
    ]