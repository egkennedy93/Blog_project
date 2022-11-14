# syntax=docker/dockerfile:1
FROM python:3.8
RUN apt-get -y update; apt install libpq-dev python3-dev -y
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV DJANGO_SECRET_KEY=$DJANGO_SECRET_KEY
WORKDIR /src
COPY requirements.txt /src/
RUN pip install -r requirements.txt
COPY . /src/