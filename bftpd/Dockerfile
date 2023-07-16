FROM ubuntu:22.04

RUN <<EOF
  apt update 
  apt install -y build-essential git make wget tar
EOF

RUN <<EOF
  wget -O bftpd.tar.gz https://sourceforge.net/projects/bftpd/files/latest/download
  tar zxvf bftpd.tar.gz
  cd bftpd
  ./configure
  make
  make install
EOF

CMD bftpd -d && sleep 10000
