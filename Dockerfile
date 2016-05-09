FROM ubuntu
LABEL version="0.1"
LABEL description="uvloop dev environment based on latest LTS ubuntu and python 3.5.x"
MAINTAINER "matteo.angelino@gmail.com"
RUN apt-get update && apt-get -y install python3 \
cython3 \
python3-pip \
autogen \
automake \
libtool \
&& rm -rf /var/lib/apt/lists/*
RUN ln -s /usr/bin/python3 /usr/bin/python && ln -s /usr/bin/pip3 /usr/bin/pip
RUN pip install uvloop
