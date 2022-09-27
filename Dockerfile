FROM python:3.8.13
RUN apt-get update
RUN apt-get -y install curl autoconf automake libtool python-dev pkg-config
RUN git clone https://github.com/openvenues/libpostal
WORKDIR libpostal
RUN ./bootstrap.sh
RUN ./configure --datadir=/tmp/
RUN make
RUN make install
RUN ldconfig