# CHIP-Files
This is a collection of my scripts and config files to set up a fresh flashed [CHIP](http://docs.getchip.com/chip.html)

##After flashing
1. Connect to the CHIP via Serial as root and run following commands to get ready for the scripts.
  + **nmcli device wifi connect '[SSID]' password '[WIFI PASSWORD]' ifname wlan0"**
  + **nmcli device status**
  + **nmtui**  
   The CHIP should now be connected to the Network.		
2. Let's change the default root passwords.
  + **passwd**
3. Let's change the default chip passwords.
  + **passwd chip**
4. Let's change the default timezone.
  + **dpkg-reconfigure tzdata**

##Getting the Scripts
1. SSH to the CHIP and login as root
2. Switch to the temporary folder
  + **cd /tmp**
3. Download the basic setup script, which will update the Battery Monitor script, install the Auto Shutdown and Squeezelite
  + **wget https://raw.githubusercontent.com/rainerilgen/CHIP-Files/master/scripts/chip_install.sh**
  + **chmod +x chip_install.sh**
  + **./chip_install.sh**
4. Download the Logitech Media Server install script if you like to have LMS installed.
  + **wget https://raw.githubusercontent.com/rainerilgen/CHIP-Files/master/scripts/chip_lms_install.sh**
  + **chmod +x chip_lms_install.sh**
  + **./chip_lms_install.sh**
5. Download the Home Assistant install script if you like to have HA installed in a virtual environment (not fully tested).
  + **wget https://raw.githubusercontent.com/rainerilgen/CHIP-Files/master/scripts/chip_ha_venv_install.sh**
  + **chmod +x chip_ha_venv_install.sh**
  + **./chip_ha_venv_install.sh**
