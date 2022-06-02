# Generated by Django 3.1.7 on 2022-02-22 12:04

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Asname',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('as_field', models.TextField(blank=True, db_column='as', null=True)),
                ('count', models.BigIntegerField()),
            ],
            options={
                'db_table': 'asname',
            },
        ),
        migrations.CreateModel(
            name='Df',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ip', models.TextField(blank=True, null=True)),
                ('user', models.TextField(blank=True, null=True)),
                ('year', models.IntegerField(blank=True, null=True)),
                ('month', models.IntegerField(blank=True, null=True)),
                ('day', models.IntegerField(blank=True, null=True)),
                ('hour', models.IntegerField(blank=True, null=True)),
                ('min', models.IntegerField(blank=True, null=True)),
                ('second', models.IntegerField(blank=True, null=True)),
                ('http_method', models.TextField(blank=True, null=True)),
                ('http_path', models.TextField(blank=True, null=True)),
                ('http_version', models.TextField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('bytes', models.BigIntegerField(blank=True, null=True)),
                ('http_content_type', models.TextField(blank=True, null=True)),
                ('referer', models.TextField(blank=True, null=True)),
                ('os', models.TextField(blank=True, null=True)),
                ('scheme', models.TextField(blank=True, null=True)),
                ('as_field', models.TextField(blank=True, db_column='as', null=True)),
                ('country_name', models.TextField(blank=True, null=True)),
                ('region_name', models.TextField(blank=True, null=True)),
                ('city_name', models.TextField(blank=True, null=True)),
                ('latitude', models.TextField(blank=True, null=True)),
                ('longitude', models.TextField(blank=True, null=True)),
            ],
            options={
                'db_table': 'df',
            },
        ),
        migrations.CreateModel(
            name='Https',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('scheme', models.TextField(blank=True, null=True)),
                ('count', models.BigIntegerField()),
            ],
            options={
                'db_table': 'https',
            },
        ),
        migrations.CreateModel(
            name='Ip',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ip', models.TextField(blank=True, null=True)),
                ('count', models.BigIntegerField()),
            ],
            options={
                'db_table': 'ip',
            },
        ),
        migrations.CreateModel(
            name='Ip404',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ip', models.TextField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('count', models.BigIntegerField()),
            ],
            options={
                'db_table': 'ip404',
            },
        ),
        migrations.CreateModel(
            name='Method',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('http_method', models.TextField(blank=True, null=True)),
                ('count', models.BigIntegerField()),
            ],
            options={
                'db_table': 'method',
            },
        ),
        migrations.CreateModel(
            name='Os',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('os', models.TextField(blank=True, null=True)),
                ('count', models.BigIntegerField()),
            ],
            options={
                'db_table': 'os',
            },
        ),
        migrations.CreateModel(
            name='Status',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('status', models.IntegerField(blank=True, null=True)),
                ('count', models.BigIntegerField()),
            ],
            options={
                'db_table': 'status',
            },
        ),
        migrations.CreateModel(
            name='Views',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('year', models.IntegerField(blank=True, null=True)),
                ('month', models.IntegerField(blank=True, null=True)),
                ('day', models.IntegerField(blank=True, null=True)),
                ('sum', models.BigIntegerField(blank=True, null=True)),
                ('count', models.BigIntegerField()),
            ],
            options={
                'db_table': 'views',
            },
        ),
    ]