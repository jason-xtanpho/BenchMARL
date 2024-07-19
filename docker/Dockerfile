# FROM nvidia/cuda:11.4.2-cudnn8-devel-ubuntu20.04
FROM nvidia/cuda:11.2.2-cudnn8-devel-ubuntu20.04

ARG APT_COMMAND="apt-get -o Acquire::Retries=3 -y"

# Stops tzdata from asking about timezones and blocking install on user input.
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Seoul

############################################################################
## Install ubuntu packages
############################################################################
# RUN rm /etc/apt/sources.list.d/cuda.list
RUN ${APT_COMMAND} update && ${APT_COMMAND} install -y --no-install-recommends \
        python3 \
        python3-dev \
        python3-pip \
        software-properties-common \
        curl \
        less \
        build-essential \
        libboost-all-dev \
        bison \
        libcairo2-dev \
        flex \
        libfl-dev \
        git \
        libopenblas-dev \
        wget \
        cmake \
        ffmpeg \
        libsm6 \
        libxext6 \
        gcc-multilib \
        g++-multilib \
        gcc-7 \
        g++-7 \
        tcl \
        nano \
        htop \
        tmux \
        libtbb-dev \
        libhwloc-dev \
        libboost-program-options-dev \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 70 --slave /usr/bin/g++ g++ /usr/bin/g++-7 --slave /usr/bin/gcov gcov /usr/bin/gcov-7

############################################################################
## Install requirements.txt 
############################################################################
# copy requirements.txt file into the Docker image 
COPY requirements.txt requirements.txt

# install python packages
RUN python3 -m pip install --no-cache-dir -r requirements.txt

CMD ["/bin/bash"]