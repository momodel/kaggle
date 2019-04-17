FROM continuumio/miniconda3

# docker build -t vanessa/kaggle .

# RUN apt-get update
# RUN apt-get -y install apt-utils wget git

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

ENV PATH /opt/conda/bin:$PATH

RUN /opt/conda/bin/pip install --upgrade pip && \
    /opt/conda/bin/pip install kaggle flask_socketio redis

ADD kaggle_api_extended.py /opt/conda/lib/python3.7/site-packages/kaggle/api
RUN mkdir /root/.kaggle
ADD kaggle.json /root/.kaggle
