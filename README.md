config
======

After setting up your ssh key, you should clone this directory using

    git clone git@github.com:justinthomas/odroid_setup ~/git/odroid_setup/

To configure the network follow the following instructions

edit the file etc/network/interfaces and add

auto wlan0
    iface wlan0 inet static
    
    wpa-driver wext
    wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
    address 192.168.129.100
    netmask 255.255.255.0
    gateway 192.168.129.1

edit the file wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf and add

network={

    ssid="mrsl_airrouterhp"
    scan_ssid=1
    key_mgmt=NONE

}

