# Generated by Django 2.2 on 2020-12-01 22:46

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('marche', '0002_auto_20201129_2346'),
    ]

    operations = [
        migrations.AddField(
            model_name='categorie',
            name='description',
            field=models.CharField(default=django.utils.timezone.now, max_length=200),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='supcategorie',
            name='description',
            field=models.CharField(default=django.utils.timezone.now, max_length=200),
            preserve_default=False,
        ),
    ]
