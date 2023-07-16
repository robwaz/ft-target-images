FROM --platform=linux/amd64 ubuntu:22.04
# amd64 bin is being pulled

RUN apt update
COPY ./debian-bullseye-amd64 /

RUN <<EOF
  apt install -y ./owntone_28.6.125.gitf9c50b8-1+bullseye_amd64.deb
  service dbus start
  service avahi-daemon start
EOF

# TODO: This could be cleaner
CMD service dbus start && service avahi-daemon start && owntone -f


