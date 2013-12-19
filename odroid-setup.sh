# Source the vimrc file
echo 'source ~/git/odroid-setup/vimrc' > ~/.vimrc

# Source the bashrc file
echo 'source ~/git/odroid-setup/bashrc' >> ~/.bashrc

# Source the bashrc file from bash_profile
echo 'source ~/.bashrc' >> ~/.bash_profile

# Now clone some other repositories
git clone git@github.com:kartikmohta/quadrotor.git ~/git/quadrotor/
cd ~/git/quadrotor/
git submodule init
git submodule update

git clone git@github.com:loiannog/ibvs_formation_bearing.git ~/git/ibvs_formation_bearing/

# Add the user to the dialout group for communication on serial
sudo usermod -a -G dialout odroid
