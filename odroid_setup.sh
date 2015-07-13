###############################################################################
##  This is a setup script for odroid xu3s that have Ubuntu 14.04 already    ##
##  flashed on them. Run the 14.04 setup script from Dropbox first.          ##
###############################################################################

# Stop if errors
set -e 

# Make sure the time is correct before downloading repos
sudo ntpdate -s time.nist.gov

# Add the user to the dialout group for communication on serial
sudo usermod -a -G dialout odroid

# Some more dependencies
sudo apt-get install ros-indigo-perception ros-indigo-diagnostics
# ros-indigo-tf

# Source the vimrc file
echo 'source ~/git/odroid_setup/vimrc' > ~/.vimrc

# Source the bashrc file
echo 'source ~/git/odroid_setup/bashrc' >> ~/.bashrc

# Source the bashrc file from bash_profile
echo 'source ~/.bashrc' >> ~/.bash_profile

# Configure git
git config --global user.email "justinthomas@jtwebs.net"
git config --global user.name "justinthomas"
git config --global push.default simple

# Quadrotor Control 
cd ~/git/
git clone git@github.com:KumarRobotics/quadrotor_control.git
cd ~/git/quadrotor_control/
git checkout -b mav_manager origin/feature/mav_manager
git submodule init
git submodule update
ln -s ~/git/quadrotor_control/ ~/catkin_ws/src/

# Formation Control stack
cd ~/git/
git clone git@github.com:justinthomas/vision_based_formation_control.git
ln -s ~/git/vision_based_formation_control/ ~/catkin_ws/src/

# KumarRobotics/camera_base
cd ~/git/
git clone git@github.com:KumarRobotics/camera_base.git
ln -s ~/git/camera_base/ ~/catkin_ws/src/

# KumarRobotics/bluefox2 (mvBlueFox camera)
git clone git@github.com:KumarRobotics/bluefox2.git
ln -s ~/git/bluefox2/ ~/catkin_ws/src/

# Set up wireless networking
echo "You need to add the MAC address to the airrouter ACL";
sudo rm /etc/wpa_supplicant/wpa_supplicant.conf
sudo ln -s ~/git/odroid_setup/wpa_supplicant /etc/wpa_supplicant/wpa_supplicant.conf

echo "Writing the following to /etc/network/interfaces"
echo -e "\nauto wlan0" | sudo tee -a /etc/network/interfaces
echo -e "iface wlan0 inet dhcp" | sudo tee -a /etc/network/interfaces
echo -e "gateway 192.168.129.1" | sudo tee -a /etc/network/interfaces
echo -e "netmaks 255.255.255.0" | sudo tee -a /etc/network/interfaces
echo -e "wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf" | sudo tee -a /etc/network/interfaces
