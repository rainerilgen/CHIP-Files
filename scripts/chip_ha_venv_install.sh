echo "Installing Home Assistant and Mosquitto"
apt-get -y install python-pip python3-dev mosquitto
pip install --upgrade virtualenv
mkdir /srv/hass
chown chip /srv/hass
su -s /bin/bash chip
#as user chip
virtualenv -p python3 /srv/hass
source /srv/hass/bin/activate
pip3 install --upgrade homeassistant
exit
#as root
su -c 'cat <<EOF >> /etc/systemd/system/home-assistant@chip.service
[Unit]
Description=Home Assistant
After=network.target

[Service]
Type=simple
User=chip
ExecStart=/srv/hass/bin/hass

[Install]
WantedBy=multi-user.target
EOF'
systemctl --system daemon-reload
systemctl enable home-assistant@chip
systemctl start home-assistant@chip
