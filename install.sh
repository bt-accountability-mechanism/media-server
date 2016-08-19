#! /bin/sh
chown :www-data middleware.py
chmod g+x middleware.py
chmod u+x init.py
chmod u+x camera_stream_h264.py

# install Janus Gateway
aptitude install libmicrohttpd-dev libjansson-dev libnice-dev \
    libssl-dev libsrtp-dev libsofia-sip-ua-dev libglib2.0-dev \
    libopus-dev libogg-dev pkg-config gengetopt libtool automake

git clone https://github.com/meetecho/janus-gateway.git
cd janus-gateway
sh autogen.sh
./configure --disable-websockets --disable-data-channels --disable-rabbitmq --prefix=/opt/janus
make
make install
make configs
mkdir /var/www/html/janus-gateway
cp -R html/* /var/www/html/janus-gateway/
cd ../
rm -R janus-gateway

# install gstreamer
add-apt-repository ppa:gstreamer-developers/ppa
apt-get update
apt-get install -y gstreamer1.0*

