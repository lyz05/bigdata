from django.shortcuts import render
import json
# Create your views here.
from testApp import models


def index(request):
    title = 'Nginx访问日志数据可视化'
    # chart1
    asname = models.Asname.objects.all().order_by('-count')[:6]
    # chart2
    ipchart = models.Ip.objects.all().order_by('-count')
    # chart3
    oschart = models.Os.objects.all().order_by('-count')
    # middlechart
    httpchart = models.Https.objects.all()
    # chart5
    flowchart = models.Views.objects.all()[:9]
    # chart4
    methodchart = models.Method.objects.all().order_by('-count')[:5]
    # chart8
    statuschart = models.Status.objects.all().order_by('-count')
    chart1 = {
        'title': '柱状图-AS访问量',
        'count': json.dumps([i[0] for i in asname.values_list('count')]),
        'as_field': json.dumps([i[0] for i in asname.values_list('as_field')])
    }
    chart2 = {
        'title': '雷达图-ip请求的次数',
        'ip': json.dumps([i[0] for i in ipchart.values_list('ip')]),
        'count': json.dumps([i[0] for i in ipchart.values_list('count')]),
    }
    chart3 = {
        'title': '饼图-来源操作系统',
        'os': json.dumps([i[0] for i in oschart.values_list('os')]),
        'count': json.dumps([i[0] for i in oschart.values_list('count')]),
    }
    chart4 = {
        'title': '柱状图-请求方法占比',
        'http_method': json.dumps([i[0] for i in methodchart.values_list('http_method')]),
        'count': json.dumps([i[0] for i in methodchart.values_list('count')]),
    }
    chart5 = {
        'title': '访问量与时间',
    }
    chart6 = {
        'title': '图表6标题'
    }
    chart7 = {
        'title': '图表7标题'
    }
    chart8 = {
        'title': '南丁格尔图-请求状态占比',
        'status': json.dumps([i[0] for i in statuschart.values_list('status')]),
        'count': json.dumps([i[0] for i in statuschart.values_list('count')]),
    }
    return render(request, 'index.html', locals())



