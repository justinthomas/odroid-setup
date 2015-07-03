###############################################################################
##  This is a setup script for odroid xu3s that have Ubuntu 14.04 already    ##
##  flashed on them. Run the 14.04 setup script from Dropbox first.          ##
###############################################################################

# Stop if errors
set -e 

# Add the user to the dialout group for communication on serial
sudo usermod -a -G dialout odroid

# Source the vimrc file
echo 'source ~/git/odroid_setup/vimrc' > ~/.vimrc

# Source the bashrc file
echo 'source ~/git/odroid_setup/bashrc' >> ~/.bashrc

# Source the bashrc file from bash_profile
echo 'source ~/.bashrc' >> ~/.bash_profile

# Configure git
git config --global user.email "justinthomas@jtwebs.net"
git config --global user.name "justinthomas"

# Quadrotor Control 
cd ~/git/
git clone git@github.com:KumarRobotics/quadrotor_control.git
cd ~/git/quadrotor_control/
git submodule init
git submodule update
git branch --track mav_manager origin/feature/mav_manager
ln -s ~/git/quadrotor_control/ ~/catkin_ws/src/

# Formation Control stack
cd ~/git/
git clone git@github.com:justinthomas/vision_based_formation_control.git
ln -s ~/git/vision_based_formation_control/ ~/catkin_ws/src/
