# Generated by Django 2.2 on 2020-11-29 21:27

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='SupCategorie',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nom', models.CharField(db_index=True, max_length=50)),
                ('slug', models.CharField(max_length=50, unique=True)),
                ('date_creation', models.DateTimeField(auto_now_add=True)),
                ('date_maj', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.CreateModel(
            name='Categorie',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nom', models.CharField(db_index=True, max_length=200)),
                ('slug', models.SlugField(max_length=200, unique=True)),
                ('date_creation', models.DateTimeField(auto_now_add=True)),
                ('date_maj', models.DateTimeField(auto_now=True)),
                ('sup_categorie', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='categories', to='marche.SupCategorie')),
            ],
            options={
                'verbose_name': 'categorie',
                'verbose_name_plural': 'categories',
                'ordering': ('date_maj',),
            },
        ),
        migrations.CreateModel(
            name='Produit',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nom', models.CharField(db_index=True, max_length=200)),
                ('slug', models.SlugField(max_length=200)),
                ('image', models.ImageField(blank=True, upload_to='produits/%y/%m/%d')),
                ('provenance', models.TextField(blank=True)),
                ('prix', models.IntegerField()),
                ('unite', models.CharField(max_length=30)),
                ('disponibilite', models.BooleanField(default=True)),
                ('date_creation', models.DateTimeField(auto_now_add=True)),
                ('date_maj', models.DateTimeField(auto_now=True)),
                ('categorie', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='produits', to='marche.Categorie')),
            ],
            options={
                'ordering': ('date_maj',),
                'index_together': {('id', 'slug')},
            },
        ),
    ]
