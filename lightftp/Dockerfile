FROM ubuntu:22.04

RUN mkdir -p /home/user

RUN <<EOF
  apt update 
  apt install -y build-essential gnutls-dev git make
EOF

RUN <<EOF
  git clone https://github.com/hfiref0x/LightFTP.git 
  cd LightFTP/Source/Release && make
EOF


EXPOSE 20
EXPOSE 21
CMD /LightFTP/Source/Release/fftp /LightFTP/Bin/fftp.conf
