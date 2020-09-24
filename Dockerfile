FROM debian:buster-slim
MAINTAINER lino@lino.io
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
SHELL ["/bin/bash", "-c", "-l"]
RUN apt-get update
RUN apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev python-openssl git \
    libmariadb-dev-compat libssl-dev jq wget curl
ADD scripts /scripts
RUN scripts/pyenv-install.sh
RUN scripts/geckodriver-install.sh
