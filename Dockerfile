FROM python:3.9-slim-buster

WORKDIR /homepage/


COPY requirements.txt /homepage/
RUN pip install -r requirements.txt
COPY . /homepage/
