# Generated by Django 2.2.14 on 2020-12-27 01:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='is_cgu',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='user',
            name='is_newsletter',
            field=models.BooleanField(default=True),
        ),
    ]
