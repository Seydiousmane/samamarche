# Generated by Django 2.2 on 2021-04-15 18:54

from django.db import migrations
import phonenumber_field.modelfields


class Migration(migrations.Migration):

    dependencies = [
        ('commandes', '0009_auto_20210322_0219'),
    ]

    operations = [
        migrations.AlterField(
            model_name='commande',
            name='telephone',
            field=phonenumber_field.modelfields.PhoneNumberField(max_length=128, region=None),
        ),
    ]