# Generated by Django 2.2 on 2021-03-07 02:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('marche', '0012_homeslide_nom'),
    ]

    operations = [
        migrations.AddField(
            model_name='produit',
            name='description',
            field=models.CharField(blank=True, default='Détails de...', max_length=200, null=True),
        ),
    ]
