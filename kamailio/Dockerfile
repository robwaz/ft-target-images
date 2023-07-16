from ubuntu:22.04

RUN apt update
RUN apt install -y build-essential wget bison flex

RUN <<EOF
  wget https://www.kamailio.org/pub/kamailio/latest/src/kamailio-5.7.1_src.tar.gz
  tar zxvf kamailio-5.7.1_src.tar.gz
  cd kamailio-5.7.1
  make cfg
  make all
  make install
EOF

CMD kamailio
