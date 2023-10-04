# Generated by Django 2.2.14 on 2021-02-22 19:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('commandes', '0002_auto_20201216_2327'),
    ]

    operations = [
        migrations.AddField(
            model_name='commande',
            name='status',
            field=models.CharField(choices=[('effectuee', 'Commande effectuée'), ('en_traitement', 'Commande en cours de traitement'), ('livree', 'Commande livrée')], default='effectuee', max_length=10),
        ),
    ]
