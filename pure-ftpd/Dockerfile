FROM ubuntu:22.04

RUN <<EOF
  apt update
  apt install -y git make build-essential wget bzip2 tar
EOF

RUN <<EOF
  wget https://github.com/jedisct1/pure-ftpd/releases/download/1.0.50/pure-ftpd-1.0.50.tar.bz2
  bunzip2 pure-ftpd-1.0.50.tar.bz2
  tar xvf pure-ftpd-1.0.50.tar
  cd pure-ftpd-1.0.50
  ./configure
  make install-strip
EOF

CMD pure-ftpd


