FROM python
MAINTAINER Mike Chernev <mike@mikechernev.com>

ENV LIBGIT_VERSION 0.25.0

# Cmake is a dependency for building libgit2
RUN apt-get update && apt-get install -y cmake

# Downloading and building libgit2
RUN wget https://github.com/libgit2/libgit2/archive/v${LIBGIT_VERSION}.tar.gz
RUN tar xzf v${LIBGIT_VERSION}.tar.gz
RUN cd libgit2-${LIBGIT_VERSION} \
    && cmake . \
    && make \
    && make install

# The python wrapper for libgit2
RUN pip install pygit2

# Required for updating the libs
RUN ldconfig
