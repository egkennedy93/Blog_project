# syntax=docker/dockerfile:1
FROM python:3.8
RUN apt-get -y update; apt install libpq-dev python3-dev -y
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ARG DJANGO_SECRET_KEY=$DJANGO_SECRET_KEY
COPY . /Blog_project
WORKDIR /Blog_project
RUN pip install -r requirements.txt
WORKDIR /Blog_project/src/blog_project
