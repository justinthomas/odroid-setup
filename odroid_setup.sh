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
git branch --track giuseppe-rgbd origin/giuseppe-rgbd


# TooN Library
wget http://www.edwardrosten.com/cvd/TooN-2.2.tar.gz ~/temp/
cd ~/temp/
tar -xvf TooN-2.2.tar.gz
cd ./TooN-2.2
./configure
sudo make && sudo make install
cd ~/
rm -rf ~/temp/

# We need these apparently...
sudo apt-get install ros-hydro-angles ros-hydro-visualization-msgs ros-hydro-nodelet-core ros-hydro-image* ros-hydro-common-msgs
