FROM python:alpine3.19

EXPOSE 5000

RUN\
  apk update &&\
  apk upgrade && \
  apk add py3-gunicorn\
          py3-flask

COPY ./server_web.py .

ENTRYPOINT\
  gunicorn\
  --bind 0.0.0.0:5000\
  server_web:app