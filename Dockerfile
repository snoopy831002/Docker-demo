FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /django-files
WORKDIR /django-files
RUN pip install Django
RUN django-admin startproject mysite
RUN python mysite/manage.py migrate
