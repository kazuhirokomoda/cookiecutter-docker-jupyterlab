{% if cookiecutter.use_nvidia_docker == 'yes' %}
FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
{% else %}
FROM ubuntu:18.04
{% endif %}

# OpenCV requirements https://docs.opencv.org/master/d7/d9f/tutorial_linux_install.html
# TODO: remove unnecessary libraries
RUN apt-get update \
    && apt-get install -y \
        build-essential \
        cmake \
        libgtk2.0-dev \
        pkg-config \
        libavcodec-dev \
        libavformat-dev \
        libswscale-dev \
        libsm6 libxrender1 libxext-dev libxext6 libxrender-dev libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# nodejs for some Jupyter Lab Extension
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y \
        nodejs

# Other requirements
RUN apt-get update \
    && apt-get install -y \
        git \
        git-lfs \
        python3.6 \
        python3-pip \
        python3.6-dev \
        sudo \
        wget \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip

# Install Python dependencies via pip
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Jupyter Lab Extension
RUN npm install @jupyterlab/imageviewer \
    && jupyter labextension install @jupyterlab/toc \
    && jupyter lab build

# Assign docker user, with the same UID from host
ARG HOST_UID
RUN useradd docker -l -u $HOST_UID -s /bin/bash -m
USER docker

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

WORKDIR /work
CMD ["/bin/bash"]
