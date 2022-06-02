# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)



class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class EchartDbsetup(models.Model):
    name = models.CharField(unique=True, max_length=128)
    dbtype = models.CharField(max_length=50)
    host = models.CharField(max_length=128)
    port = models.CharField(max_length=50)
    user = models.CharField(max_length=128)
    password_blank = models.CharField(max_length=128)
    password = models.CharField(max_length=128)
    database = models.CharField(max_length=128)
    remark = models.CharField(max_length=500)
    owner = models.CharField(max_length=50)
    update_time = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'echart_dbsetup'


class EchartDbsetupUsers(models.Model):
    dbsetup = models.ForeignKey(EchartDbsetup, models.DO_NOTHING)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'echart_dbsetup_users'
        unique_together = (('dbsetup', 'user'),)


class EchartDimensiontable(models.Model):
    name_id = models.IntegerField()
    row = models.CharField(max_length=128)
    col = models.CharField(max_length=128)
    data = models.FloatField()
    update_time = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'echart_dimensiontable'


class EchartEchartdashboardsetupV2(models.Model):
    name = models.CharField(unique=True, max_length=128)
    remark = models.CharField(max_length=500)
    body = models.CharField(max_length=500)
    is_online = models.IntegerField()
    others = models.CharField(max_length=1000)
    token_time = models.SmallIntegerField()
    owner = models.CharField(max_length=50)
    active = models.IntegerField()
    is_public = models.IntegerField()
    is_walter = models.IntegerField()
    desktop = models.IntegerField()
    is_loading = models.IntegerField()
    update_time = models.DateTimeField()
    conn = models.ForeignKey(EchartDbsetup, models.DO_NOTHING, blank=True, null=True)
    html_file = models.ForeignKey('EchartEcharttemplateformat', models.DO_NOTHING)
    project_name = models.ForeignKey('EchartProjectlist', models.DO_NOTHING, blank=True, null=True)
    theme_name = models.ForeignKey('EchartEcharttheme', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'echart_echartdashboardsetup_v2'


class EchartEchartdashboardsetupV2Group(models.Model):
    echartdashboardsetup_v2 = models.ForeignKey(EchartEchartdashboardsetupV2, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'echart_echartdashboardsetup_v2_group'
        unique_together = (('echartdashboardsetup_v2', 'group'),)


class EchartEchartdashboardsetupV2Users(models.Model):
    echartdashboardsetup_v2 = models.ForeignKey(EchartEchartdashboardsetupV2, models.DO_NOTHING)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'echart_echartdashboardsetup_v2_users'
        unique_together = (('echartdashboardsetup_v2', 'user'),)


class EchartEchartdataset(models.Model):
    name = models.CharField(unique=True, max_length=128)
    sql_str = models.TextField()
    with_head = models.IntegerField()
    remark = models.CharField(max_length=200)
    nextsyn_time = models.DateTimeField()
    syn_interval = models.FloatField()
    is_cache = models.IntegerField()
    is_public = models.IntegerField()
    is_online = models.IntegerField()
    owner = models.CharField(max_length=50)
    update_time = models.DateTimeField()
    conn = models.ForeignKey(EchartDbsetup, models.DO_NOTHING)
    echart_format = models.ForeignKey('EchartEchartformat', models.DO_NOTHING)
    project_name = models.ForeignKey('EchartProjectlist', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'echart_echartdataset'


class EchartEchartdatasetUsers(models.Model):
    echartdataset = models.ForeignKey(EchartEchartdataset, models.DO_NOTHING)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'echart_echartdataset_users'
        unique_together = (('echartdataset', 'user'),)


class EchartEchartformat(models.Model):
    name = models.CharField(unique=True, max_length=128)
    remark = models.CharField(max_length=200)
    option_format = models.TextField()
    option_format_x = models.TextField()
    dataset_sample = models.TextField()
    is_public = models.IntegerField()
    is_online = models.IntegerField()
    owner = models.CharField(max_length=50)
    seq = models.SmallIntegerField()
    update_time = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'echart_echartformat'


class EchartEchartformatUsers(models.Model):
    echartformat = models.ForeignKey(EchartEchartformat, models.DO_NOTHING)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'echart_echartformat_users'
        unique_together = (('echartformat', 'user'),)


class EchartEchartreportsetup(models.Model):
    div_format = models.CharField(max_length=1000)
    seq = models.SmallIntegerField()
    group = models.SmallIntegerField()
    is_ajax = models.IntegerField()
    interval = models.SmallIntegerField()
    active = models.IntegerField()
    dataset = models.ForeignKey(EchartEchartdataset, models.DO_NOTHING)
    echartdashboard = models.ForeignKey(EchartEchartdashboardsetupV2, models.DO_NOTHING)
    echartformat = models.ForeignKey(EchartEchartformat, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'echart_echartreportsetup'


class EchartEcharttemplateformat(models.Model):
    name = models.CharField(unique=True, max_length=128)
    html_file = models.CharField(unique=True, max_length=128)
    update_time = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'echart_echarttemplateformat'


class EchartEcharttheme(models.Model):
    name = models.CharField(unique=True, max_length=128)
    remark = models.CharField(max_length=200)
    theme_file = models.CharField(unique=True, max_length=128)
    is_public = models.IntegerField()
    owner = models.CharField(max_length=50)
    update_time = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'echart_echarttheme'


class EchartEchartthemeUsers(models.Model):
    echarttheme = models.ForeignKey(EchartEcharttheme, models.DO_NOTHING)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'echart_echarttheme_users'
        unique_together = (('echarttheme', 'user'),)


class EchartErrorlog(models.Model):
    name = models.CharField(max_length=50)
    remark = models.TextField()
    user = models.CharField(max_length=50, blank=True, null=True)
    update_time = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'echart_errorlog'


class EchartProjectlist(models.Model):
    name = models.CharField(max_length=50)
    remark = models.CharField(max_length=128)
    color = models.CharField(max_length=500)
    seq = models.IntegerField()
    icon = models.CharField(max_length=200)
    father = models.CharField(max_length=50)
    is_public = models.IntegerField()
    owner = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'echart_projectlist'


class EchartProjectlistUsers(models.Model):
    projectlist = models.ForeignKey(EchartProjectlist, models.DO_NOTHING)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'echart_projectlist_users'
        unique_together = (('projectlist', 'user'),)


class EchartReportcomment(models.Model):
    report_link = models.CharField(max_length=100)
    report_id = models.IntegerField()
    report_flag = models.IntegerField()
    remark = models.TextField()
    user = models.CharField(max_length=50, blank=True, null=True)
    update_time = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'echart_reportcomment'


class EchartReportcommentread(models.Model):
    user = models.CharField(max_length=50)
    report_id = models.IntegerField()
    report_flag = models.IntegerField()
    update_time = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'echart_reportcommentread'


class EchartVisitlog(models.Model):
    user = models.CharField(max_length=50, blank=True, null=True)
    ip = models.CharField(max_length=20)
    type = models.CharField(max_length=128, blank=True, null=True)
    update_time = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'echart_visitlog'
