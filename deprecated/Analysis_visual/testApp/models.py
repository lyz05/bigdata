from django.db import models


# Create your models here.

class Asname(models.Model):
    as_field = models.TextField(db_column='as', blank=True,
                                null=True)  # Field renamed because it was a Python reserved word.
    count = models.BigIntegerField()

    class Meta:
        db_table = 'asname'


class Df(models.Model):
    ip = models.TextField(blank=True, null=True)
    user = models.TextField(blank=True, null=True)
    year = models.IntegerField(blank=True, null=True)
    month = models.IntegerField(blank=True, null=True)
    day = models.IntegerField(blank=True, null=True)
    hour = models.IntegerField(blank=True, null=True)
    min = models.IntegerField(blank=True, null=True)
    second = models.IntegerField(blank=True, null=True)
    http_method = models.TextField(blank=True, null=True)
    http_path = models.TextField(blank=True, null=True)
    http_version = models.TextField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    bytes = models.BigIntegerField(blank=True, null=True)
    http_content_type = models.TextField(blank=True, null=True)
    referer = models.TextField(blank=True, null=True)
    os = models.TextField(blank=True, null=True)
    scheme = models.TextField(blank=True, null=True)
    as_field = models.TextField(db_column='as', blank=True,
                                null=True)  # Field renamed because it was a Python reserved word.
    country_name = models.TextField(blank=True, null=True)
    region_name = models.TextField(blank=True, null=True)
    city_name = models.TextField(blank=True, null=True)
    latitude = models.TextField(blank=True, null=True)
    longitude = models.TextField(blank=True, null=True)

    class Meta:
        db_table = 'df'


class Https(models.Model):
    scheme = models.TextField(blank=True, null=True)
    count = models.BigIntegerField()

    class Meta:
        db_table = 'https'


class Ip(models.Model):
    ip = models.TextField(blank=True, null=True)
    count = models.BigIntegerField()

    class Meta:
        db_table = 'ip'


class Ip404(models.Model):
    ip = models.TextField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    count = models.BigIntegerField()

    class Meta:
        db_table = 'ip404'


class Method(models.Model):
    http_method = models.TextField(blank=True, null=True)
    count = models.BigIntegerField()

    class Meta:
        db_table = 'method'


class Os(models.Model):
    os = models.TextField(blank=True, null=True)
    count = models.BigIntegerField()

    class Meta:
        db_table = 'os'


class Status(models.Model):
    status = models.IntegerField(blank=True, null=True)
    count = models.BigIntegerField()

    class Meta:
        db_table = 'status'


class Views(models.Model):
    year = models.IntegerField(blank=True, null=True)
    month = models.IntegerField(blank=True, null=True)
    day = models.IntegerField(blank=True, null=True)
    # hour = models.IntegerField(blank=True, null=True)
    sum = models.BigIntegerField(blank=True, null=True)
    count = models.BigIntegerField()

    class Meta:
        db_table = 'views'
