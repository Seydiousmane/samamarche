# Generated by Django 2.2.14 on 2021-01-26 22:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('marche', '0011_homeslide'),
    ]

    operations = [
        migrations.AddField(
            model_name='homeslide',
            name='nom',
            field=models.CharField(default='Slide name', max_length=30),
        ),
    ]
