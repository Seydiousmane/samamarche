# Generated by Django 2.2 on 2021-04-05 17:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('marche', '0013_produit_description'),
    ]

    operations = [
        migrations.CreateModel(
            name='HoraireLivraison',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date_prochaine_livraison', models.DateField()),
            ],
        ),
    ]