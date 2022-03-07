FROM ubuntu:focal

ADD https://downloads.percona.com/downloads/percona-toolkit/3.3.1/binary/debian/focal/x86_64/percona-toolkit_3.3.1-1.focal_amd64.deb /
RUN \
  apt update && \
  apt install -y /percona-toolkit_3.3.1-1.focal_amd64.deb

ENTRYPOINT ["/bin/bash"]