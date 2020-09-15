# settings.py (ADAM)
# !/usr/bin/env python3
# coding=utf-8
# ruiz-mercado.gerardo@epa.gov

"""
Django settings for ADAM project.

Generated by 'django-admin startproject' using Django 2.2.9.

For more information on this file, see
https://docs.djangoproject.com/en/2.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/2.2/ref/settings/
"""

import os

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/2.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '*****'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ['127.0.0.1', 'localhost']

INSTALLED_APPS = [
    'demo.apps.DemoConfig',
    'expert.apps.ExpertConfig',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'background_task',
    'django_extensions',
    'ADAM',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'ADAM.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'ADAM.context_processors.selected_settings',
            ],
        },
    },
]

WSGI_APPLICATION = 'ADAM.wsgi.application'


# Database
# https://docs.djangoproject.com/en/2.2/ref/settings/#databases
# NOTE: Add your specific local database to local_settings.py
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'adam',
        'USER': 'your-db-user-name',
        'PASSWORD': 'your-db-user-pw',
        'HOST': 'your-db-host',
        'PORT': '5432',
    }
}
# Password validation
# https://docs.djangoproject.com/en/2.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',  # noqa
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',  # noqa
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',  # noqa
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',  # noqa
    },
]


# Internationalization
# https://docs.djangoproject.com/en/2.2/topics/i18n/

LANGUAGE_CODE = 'en-us'
# TIME_ZONE = 'UTC'
TIME_ZONE = 'America/New_York'
DATETIME_FORMAT = '%m/%d/%Y %H:%M'
USE_I18N = True
USE_L10N = True
USE_TZ = True

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/2.2/howto/static-files/
STATIC_URL = '/static/'
STATIC_ROOT = os.path.join(BASE_DIR, 'ADAM', 'static')

DOWNLOADS_DIR = os.path.join(BASE_DIR, '..', 'docs')

MEDIA_ROOT = os.path.join(BASE_DIR, 'ADAM', 'media')
MEDIA_URL = '/media/'

DATA_UPLOAD_MAX_MEMORY_SIZE = 52428800

CORS_REPLACE_HTTPS_REFERER = False
HOST_SCHEME = "http://"
SECURE_PROXY_SSL_HEADER = None
SECURE_SSL_REDIRECT = False
SESSION_COOKIE_SECURE = False
CSRF_COOKIE_SECURE = False

EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'smtp.office365.com'
EMAIL_USE_TLS = True
EMAIL_PORT = 587
EMAIL_HOST_USER = 'email-host@xxx.com'
EMAIL_HOST_PASSWORD = 'email-password'

LOGIN_URL = '/expert/login/'

APP_NAME = 'ADAM'

# Versioning will match Semantic Versioning 2.0.0:
# https://semver.org/
APP_VERSION = '0.0.1'
APP_DISCLAIMER = 'The United States Environmental Protection Agency ' + \
    '(EPA) GitHub project code is provided on an "as is" basis and the ' + \
    'user assumes responsibility for its use. EPA has relinquished ' + \
    'control of the information and no longer has responsibility to ' + \
    'protect the integrity , confidentiality, or availability of the' + \
    'information. Any reference to specific commercial products, ' + \
    'processes, or services by service mark, trademark, manufacturer, ' + \
    'or otherwise, does not constitute or imply their endorsement, ' + \
    'recommendation or favoring by EPA. The EPA seal and logo shall ' + \
    'not be used in any manner to imply endorsement of any commercial ' + \
    'product or activity by EPA or the United States Government.'

try:
    from .local_settings import *
except ImportError:
    pass