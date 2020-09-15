# Generated by Django 3.1.1 on 2020-09-15 19:49

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import expert.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='CaseGroup',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(default='Case Study', max_length=100)),
                ('notes', models.CharField(default='', max_length=1000)),
                ('published', models.BooleanField(default=False)),
            ],
        ),
        migrations.CreateModel(
            name='CaseStudy',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(default='Case Study Scenario', max_length=100)),
                ('timeunit', models.CharField(default='year', max_length=20)),
                ('model_type', models.IntegerField(default=1)),
                ('notes', models.CharField(default='', max_length=1000)),
                ('supLatLs', models.CharField(max_length=10)),
                ('supLngLs', models.CharField(max_length=10)),
                ('supProLs', models.CharField(max_length=10)),
                ('supCapLs', models.CharField(max_length=10)),
                ('supBidLs', models.CharField(max_length=10)),
                ('supNames', models.CharField(max_length=10)),
                ('supValueLs', models.CharField(max_length=10)),
                ('siteLatLs', models.CharField(max_length=10)),
                ('siteLngLs', models.CharField(max_length=10)),
                ('siteTecLs', models.CharField(max_length=10)),
                ('siteCapLs', models.CharField(max_length=10)),
                ('siteNames', models.CharField(max_length=10)),
                ('siteTreatLs', models.CharField(max_length=10)),
                ('candLatLs', models.CharField(max_length=10)),
                ('candLngLs', models.CharField(max_length=10)),
                ('candTecLs', models.CharField(max_length=10)),
                ('candNames', models.CharField(max_length=10)),
                ('candInstallLs', models.CharField(max_length=10)),
                ('candCapLs', models.CharField(max_length=10)),
                ('demLatLs', models.CharField(max_length=10)),
                ('demLngLs', models.CharField(max_length=10)),
                ('demProLs', models.CharField(max_length=10)),
                ('demCapLs', models.CharField(max_length=10)),
                ('demBidLs', models.CharField(max_length=10)),
                ('demNames', models.CharField(max_length=10)),
                ('demValueLs', models.CharField(max_length=10)),
                ('summary', models.CharField(default='', max_length=5000)),
                ('transportationResults', models.CharField(max_length=1000)),
                ('priceResults', models.CharField(default='', max_length=5000)),
                ('target_taskid', models.IntegerField(default=-1)),
            ],
        ),
        migrations.CreateModel(
            name='OptTask',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('task_name', models.CharField(default='New Task', max_length=100)),
                ('task_pseudoid', models.CharField(default='00000000000000000000', max_length=20)),
                ('task_status', models.CharField(default='Data Required', max_length=50)),
                ('code_path', models.CharField(default='', max_length=200)),
                ('date_create', models.DateTimeField(verbose_name='date created')),
                ('date_finish', models.DateTimeField(blank=True, null=True, verbose_name='date completed')),
                ('queue_id', models.CharField(default='-1', max_length=10)),
                ('model_type', models.IntegerField(default=0)),
                ('finished_steps', models.CharField(default='', max_length=10)),
                ('timeunit', models.CharField(default='year', max_length=20)),
                ('notes', models.CharField(default='', max_length=1000)),
                ('node_path', models.CharField(default='NA', max_length=200)),
                ('sup_path', models.CharField(default='NA', max_length=200)),
                ('tech_path', models.CharField(default='NA', max_length=200)),
                ('alpha_path', models.CharField(default='NA', max_length=200)),
                ('prod_path', models.CharField(default='NA', max_length=200)),
                ('dem_path', models.CharField(default='NA', max_length=200)),
                ('site_path', models.CharField(default='NA', max_length=200)),
                ('dis_path', models.CharField(default='NA', max_length=200)),
                ('cand_path', models.CharField(default='NA', max_length=200)),
                ('pgraph_id', models.IntegerField(default=-1)),
                ('tgraph_id', models.IntegerField(default=-1)),
                ('supLatLs', models.CharField(max_length=10)),
                ('supLngLs', models.CharField(max_length=10)),
                ('supProLs', models.CharField(max_length=10)),
                ('supCapLs', models.CharField(max_length=10)),
                ('supBidLs', models.CharField(max_length=10)),
                ('supNames', models.CharField(max_length=10)),
                ('siteLatLs', models.CharField(max_length=10)),
                ('siteLngLs', models.CharField(max_length=10)),
                ('siteTecLs', models.CharField(max_length=10)),
                ('siteCapLs', models.CharField(max_length=10)),
                ('siteNames', models.CharField(max_length=10)),
                ('candLatLs', models.CharField(max_length=10)),
                ('candLngLs', models.CharField(max_length=10)),
                ('candTecLs', models.CharField(max_length=10)),
                ('candNames', models.CharField(max_length=10)),
                ('demLatLs', models.CharField(max_length=10)),
                ('demLngLs', models.CharField(max_length=10)),
                ('demProLs', models.CharField(max_length=10)),
                ('demCapLs', models.CharField(max_length=10)),
                ('demBidLs', models.CharField(max_length=10)),
                ('demNames', models.CharField(max_length=10)),
                ('tasktransfile', models.BooleanField(default=True)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Product',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('transcost', models.FloatField(default=0.0)),
                ('unit', models.CharField(choices=[('UNIT', 'UNIT'), ('metric tonne', 'metric tonne'), ('kg', 'kg'), ('lb', 'lb'), ('cubic meter', 'cubic meter'), ('liter', 'liter'), ('gallon', 'gallon'), ('kWh', 'kWh'), ('BTU', 'BTU')], default='UNIT', max_length=20)),
                ('additionalinfo', models.CharField(default='', max_length=1000)),
                ('public', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='Technology',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('capmin', models.FloatField(default=0.0)),
                ('capmax', models.FloatField(default=0.0)),
                ('invcost_fix', models.FloatField(default=0.0)),
                ('invcost_pro', models.FloatField(default=0.0)),
                ('opcost_fix', models.FloatField(default=0.0)),
                ('opcost_pro', models.FloatField(default=0.0)),
                ('notes', models.CharField(default='', max_length=1000)),
                ('refproduct', models.IntegerField(default=0)),
                ('graphcontent', models.TextField(default='')),
                ('pngsrc', models.TextField(default='')),
                ('public', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='UserDatabase',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
        ),
        migrations.CreateModel(
            name='UserInfo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('organization', models.CharField(default=None, max_length=100)),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='UserHasTech',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('technology', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='expert.technology')),
                ('userdatabase', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='expert.userdatabase')),
            ],
            options={
                'unique_together': {('userdatabase', 'technology')},
            },
        ),
        migrations.CreateModel(
            name='UserHasProd',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('product', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='expert.product')),
                ('userdatabase', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='expert.userdatabase')),
            ],
            options={
                'unique_together': {('userdatabase', 'product')},
            },
        ),
        migrations.AddField(
            model_name='userdatabase',
            name='prods',
            field=models.ManyToManyField(through='expert.UserHasProd', to='expert.Product'),
        ),
        migrations.AddField(
            model_name='userdatabase',
            name='techs',
            field=models.ManyToManyField(through='expert.UserHasTech', to='expert.Technology'),
        ),
        migrations.AddField(
            model_name='userdatabase',
            name='user',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.CreateModel(
            name='Transformation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('transforming_coefficient', models.FloatField(default=0.0)),
                ('product', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='expert.product')),
                ('technology', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='expert.technology')),
            ],
            options={
                'unique_together': {('technology', 'product')},
            },
        ),
        migrations.CreateModel(
            name='TempDocument',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('docfile', models.FileField(upload_to=expert.models.temppath)),
                ('date_upload', models.DateTimeField(verbose_name='date uploaded')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.AddField(
            model_name='technology',
            name='prods',
            field=models.ManyToManyField(through='expert.Transformation', to='expert.Product'),
        ),
        migrations.CreateModel(
            name='PGraph',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
                ('date_create', models.DateTimeField(verbose_name='date create')),
                ('content', models.TextField()),
                ('pngsrc', models.TextField(default='')),
                ('pseudo_id', models.TextField(default='')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='OptTaskResults',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('summary', models.CharField(max_length=5000)),
                ('resultspath', models.CharField(default='', max_length=1000)),
                ('task', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='expert.opttask')),
            ],
        ),
        migrations.CreateModel(
            name='GroupHasCase',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('casegroup', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='expert.casegroup')),
                ('casestudy', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='expert.casestudy')),
            ],
            options={
                'unique_together': {('casegroup', 'casestudy')},
            },
        ),
        migrations.CreateModel(
            name='DataDocument',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('datatype', models.CharField(choices=[('Supply Data', 'Supply Data'), ('Demand Data', 'Demand Data'), ('Technology Site Data', 'Technology Site Data'), ('Technology Candidate Data', 'Technology Candidate Data')], max_length=100)),
                ('docfile', models.FileField(upload_to=expert.models.filepath)),
                ('date_upload', models.DateTimeField(verbose_name='date uploaded')),
                ('notes', models.CharField(default='No Notes', max_length=200)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.AddField(
            model_name='casegroup',
            name='childrencase',
            field=models.ManyToManyField(through='expert.GroupHasCase', to='expert.CaseStudy'),
        ),
    ]