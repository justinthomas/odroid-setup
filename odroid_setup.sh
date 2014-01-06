# Source the vimrc file
echo 'source ~/git/odroid_setup/vimrc' > ~/.vimrc

# Source the bashrc file
echo 'source ~/git/odroid_setup/bashrc' >> ~/.bashrc

# Source the bashrc file from bash_profile
echo 'source ~/.bashrc' >> ~/.bash_profile

# Now clone the quadrotor repository and set up submodules
git clone git@github.com:kartikmohta/quadrotor.git ~/git/quadrotor/
cd ~/git/quadrotor/
git submodule init
git submodule update

# clone the odroid_camera repository for the camera drivers
git clone git@github.com:loiannog/odroid_camera.git ~/git/odroid_camera/

# This library is required for the odroid_camera
sudo apt-get install libzmq1

# Formation bearing (image processing code)
git clone git@github.com:loiannog/ibvs_formation_bearing.git ~/git/ibvs_formation_bearing/

# Add the user to the dialout group for communication on serial
sudo usermod -a -G dialout odroid

# TooN Library
wget http://www.edwardrosten.com/cvd/TooN-2.2.tar.gz ~/temp/
cd ~/temp/
tar -xvf TooN-2.2.tar.gz
cd ./TooN-2.2
./configure
sudo make && sudo make install
cd ~/
rm -rf ~/temp/
