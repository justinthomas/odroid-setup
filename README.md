Setup an ODROID XU3:
======

1. Copy the ubuntu image to the eMMC card. Make sure rdkisk# is correct.

        sudo dd bs=1m if=~/Downloads/ubuntu-14.04.1lts-lubuntu-odroid-xu3-20150212.img of=/dev/rdisk#

2. Get and set up the odroid-utility from https://github.com/mdrjr/odroid-utility

    1. Use the odroid-utility to Resize Partition
    2. Use the odroid-utility to change the hostname to odroid-robotname
    
4. Reboot the computer

        sudo reboot now

5. Copy the setup script to the machine, change the permissions to be executable, and run it:

        wget https://www.dropbox.com/s/kgzqow1ep4k8pf5/14.04_NewMachineSetUp.bash
        chmod +x 14.04_NewMachineSetUp.bash
        ./14.04_NewMachineSetUp.bash

    1. This will update, upgrade, and install some packages.
    2. Choose the correct timezone when prompted
    3. Choose no when asked to setup Dropbox
    4. Setup an ssh key, and add the public key (will be printed out) to GitHub. Use the default email address and file locations for the keys. Do not use a passphrase. Add the public key to GitHub.
    5. Setup ROS indigo
    
6. Reboot the computer
    
4. Clone this repository and run the odroid_setup script

        git clone git@github.com:justinthomas/odroid_setup.git ~/git/odroid_setup/
        cd ~/git/odroid_setup/
        ./odroid_setup.sh


If the wireless adaptor is something other than wlan0:
======

    rm /etc/udev/rules.d/70-persistent-net.rules

If you can't connect to airrouther_hp 
======

    sudo iwconfig wlan0 essid mrsl_airrouterhp
    sudo reboot now

