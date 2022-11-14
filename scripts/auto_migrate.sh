#!/bin/bash

cd $PWD; cd ..; cd src/blog_project
python manage.py makemigrations
python manage.py migrate
python manage.py runserver