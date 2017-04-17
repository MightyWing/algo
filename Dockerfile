FROM centos:6.8
RUN apt-get update &&  apt-get install \
    build-essential \
    libssl-dev \
    libffi-dev \
    python-dev \
    python-pip \
    python-setuptools \
    python-virtualenv -y
COPY *  /home/algo
WORKDIR /home/algo
RUN python -m virtualenv env && source env/bin/activate && python -m pip install -U pip \
    && python -m pip install -r requirements.txt