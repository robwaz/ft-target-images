FROM ubuntu:22.04

RUN apt update
RUN apt install -y build-essential wget tar gzip

RUN mkdir -p /usr/local/var

RUN <<EOF
  wget ftp://ftp.proftpd.org/distrib/source/proftpd-1.3.8.tar.gz
  tar zxvf proftpd-1.3.8.tar.gz
  cd proftpd-1.3.8
  ./configure
  make
EOF

CMD /proftpd-1.3.8/proftpd -c /proftpd-1.3.8/sample-configurations/basic.conf && sleep 10000


