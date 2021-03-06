# Generated by Django 3.0.3 on 2020-02-12 22:27

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Language',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=2)),
            ],
        ),
        migrations.CreateModel(
            name='Typology',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number', models.SmallIntegerField(unique=True)),
            ],
        ),
        migrations.CreateModel(
            name='Excursion',
            fields=[
                ('id', models.BigIntegerField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=100)),
                ('detailPageName', models.CharField(max_length=100)),
                ('portID', models.CharField(max_length=3)),
                ('type', models.CharField(max_length=10)),
                ('activityLevel', models.CharField(max_length=100)),
                ('collectionType', models.CharField(max_length=100)),
                ('duration', models.CharField(max_length=100)),
                ('priceLevel', models.PositiveSmallIntegerField(max_length=100)),
                ('currency', models.CharField(max_length=3)),
                ('mealInfo', models.CharField(blank=True, max_length=100)),
                ('status', models.CharField(max_length=100)),
                ('shortDescription', models.CharField(blank=True, max_length=100)),
                ('longDescription', models.TextField(blank=True)),
                ('externalContent', models.BooleanField(default=False)),
                ('minimumAge', models.PositiveSmallIntegerField(blank=True, max_length=100)),
                ('wheelChairAccessible', models.BooleanField(default=False)),
                ('featured', models.BooleanField(default=False)),
                ('language', models.ManyToManyField(to='excursion.Language')),
                ('typology', models.ManyToManyField(to='excursion.Typology')),
            ],
        ),
    ]
