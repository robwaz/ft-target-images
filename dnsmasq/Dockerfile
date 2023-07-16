FROM ubuntu:22.04

RUN apt update
RUN apt install -y build-essential wget tar gzip make

RUN <<EOF
  wget https://thekelleys.org.uk/dnsmasq/dnsmasq-2.89.tar.gz
  tar zxvf dnsmasq-2.89.tar.gz
  cd dnsmasq-2.89
  make install
EOF

CMD dnsmasq
