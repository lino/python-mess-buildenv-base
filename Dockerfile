FROM python:3.8
MAINTAINER lino@lino.io
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
RUN apt-get update
RUN apt-get install libmysqlclient-dev libssl-dev
