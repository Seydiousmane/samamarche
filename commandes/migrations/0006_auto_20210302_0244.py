# Generated by Django 2.2.14 on 2021-03-02 01:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('commandes', '0005_commande_date_livraison'),
    ]

    operations = [
        migrations.AlterField(
            model_name='commande',
            name='date_livraison',
            field=models.DateTimeField(null=True),
        ),
    ]
