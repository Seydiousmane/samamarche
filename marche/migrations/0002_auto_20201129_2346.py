# Generated by Django 2.2 on 2020-11-29 22:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('marche', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='supcategorie',
            options={'ordering': ('date_maj',), 'verbose_name': 'supcategories', 'verbose_name_plural': 'supcategories'},
        ),
        migrations.AddField(
            model_name='categorie',
            name='image',
            field=models.ImageField(blank=True, upload_to='categories/%y/%m/%d'),
        ),
        migrations.AddField(
            model_name='supcategorie',
            name='image',
            field=models.ImageField(blank=True, upload_to='supcategories/%y/%m/%d'),
        ),
    ]