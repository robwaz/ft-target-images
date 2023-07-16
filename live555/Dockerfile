from --platform=linux/amd64 ubuntu:22.04

RUN apt update
RUN apt install -y build-essential wget tar

RUN <<EOF
  wget http://live555.com/liveMedia/public/live555-latest.tar.gz
  tar zxvf live555-latest.tar.gz
EOF
