echo "Installing Logitech Media Server"
apt-get update
apt-get install -y cifs-utils
mkdir /media/music
mkdir /media/playlists
echo "//192.168.178.10/Music  /media/music  cifs  guest,uid=1000,iocharset=utf8  0  0" >> /etc/fstab
echo "//192.168.178.10/playlists  /media/playlists  cifs  guest,uid=1000,iocharset=utf8  0  0" >> /etc/fstab
mount -a
cd /tmp
wget http://downloads-origin.slimdevices.com/nightly/7.9/sc/3c6f59f/logitechmediaserver_7.9.0~1483028105_arm.deb
dpkg -i logitechmediaserver_7.9.0~1483028105_arm.deb

echo "https://github.com/disaster123/shairport2_plugin"
apt-get install -y libcrypt-openssl-rsa-perl libio-socket-inet6-perl libwww-perl avahi-utils libio-socket-ssl-perl
wget http://www.inf.udec.cl/~diegocaro/rpi/libnet-sdp-perl_0.07-1_all.deb
dpkg -i libnet-sdp-perl_0.07-1_all.deb
