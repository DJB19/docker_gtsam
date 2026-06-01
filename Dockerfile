FROM ubuntu:24.04

RUN apt update && apt install -y \
    build-essential \
    cmake \
    git \
    libboost-all-dev \
    libeigen3-dev \
    libtbb-dev \
    && rm -rf /var/lib/apt/lists/*

COPY gtsam_local/include/gtsam /usr/local/include/gtsam
COPY gtsam_local/include/gtsam_unstable /usr/local/include/gtsam_unstable
COPY gtsam_local/lib/ /usr/local/lib/
COPY gtsam_local/cmake/ /usr/local/lib/cmake/

RUN ldconfig

CMD ["/bin/bash"]
