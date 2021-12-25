FROM python:3.10.1-slim-buster

WORKDIR /homepage/

RUN apt install libpq-dev -y

COPY requirements.txt /homepage/
RUN pip install -r requirements.txt
COPY . /homepage/
