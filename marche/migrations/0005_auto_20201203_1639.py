# Generated by Django 2.2 on 2020-12-03 15:39

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('marche', '0004_auto_20201201_2349'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='categorie',
            options={'ordering': ('date_creation',), 'verbose_name': 'categorie', 'verbose_name_plural': 'categories'},
        ),
    ]
