# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

COPY . /app
WORKDIR /app
RUN pip3 install .
RUN pip3 install -r docker/requirements.txt

ENV PYTHONPATH=/app
CMD [ "fps","--host","0.0.0.0"]
EXPOSE 8080