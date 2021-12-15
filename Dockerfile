FROM python

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /homepage/

RUN apt install libpq-dev -y

COPY requirements.txt /homepage/
RUN pip install -r requirements.txt
COPY ./homepage/ /homepage/
COPY ./bin/ /homepage/bin
ENTRYPOINT ["bash"]
