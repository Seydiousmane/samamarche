# Generated by Django 2.2.14 on 2020-12-06 14:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('marche', '0005_auto_20201203_1639'),
    ]

    operations = [
        migrations.AddField(
            model_name='produit',
            name='stock',
            field=models.IntegerField(default=1, null=True),
        ),
    ]
