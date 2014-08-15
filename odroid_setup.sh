# Source the vimrc file
echo 'source ~/git/odroid_setup/vimrc' > ~/.vimrc

# Source the bashrc file
echo 'source ~/git/odroid_setup/bashrc' >> ~/.bashrc

# Source the bashrc file from bash_profile
echo 'source ~/.bashrc' >> ~/.bash_profile

# TooN Library
wget http://www.edwardrosten.com/cvd/TooN-2.2.tar.gz ~/temp/
cd ~/temp/
tar -xvf TooN-2.2.tar.gz
cd ./TooN-2.2
./configure
sudo make && sudo make install
cd ~/
rm -rf ~/temp/


#ROS installation commands
sudo sh -c 'echo "deb http://packages.namniart.com/repos/ros precise main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.namniart.com/repos/namniart.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install ros-hydro-ros-base
sudo apt-get install python-rosdep
sudo rosdep init
rosdep update
echo "source /opt/ros/hydro/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get install python-rosinstall

# We need these apparently...
sudo apt-get install ros-hydro-angles ros-hydro-visualization-msgs ros-hydro-nodelet-core ros-hydro-image* ros-hydro-common-msgs
