FROM python:3.8
MAINTAINER lino@lino.io
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
RUN apt-get update
RUN apt-get install -y libmariadb-dev-compat libssl-dev python3-dev jq wget curl
ADD geckodriver-install.sh /
RUN ./geckodriver-install.sh
