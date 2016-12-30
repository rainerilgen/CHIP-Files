echo "Installing updated Battery Monitor script"
cd /usr/bin
rm battery.sh
wget https://raw.githubusercontent.com/KoljaWindeler/CHIP-hwtest/master/chip-hwtest/bin/battery.sh
chmod +x battery.sh

echo "Installing Auto Shutdown Script"
apt-get update
apt-get -y install i2c-tools locales
wget -O /usr/local/bin/gpio.sh http://fordsfords.github.io/gpio_sh/gpio.sh
wget -O /usr/local/bin/blink.sh http://fordsfords.github.io/blink/blink.sh
chmod +x /usr/local/bin/blink.sh
wget -O /etc/systemd/system/blink.service http://fordsfords.github.io/blink/blink.service
wget -O /usr/local/etc/blink.cfg https://raw.githubusercontent.com/rainerilgen/CHIP-Files/master/config/blink.cfg
systemctl enable /etc/systemd/system/blink.service
systemctl daemon-reload
service blink start

echo "Installing Squeezelite"
apt-get install -y squeezelite
