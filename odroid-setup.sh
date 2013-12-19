# Source the vimrc file
echo 'source ~/git/odroid-setup/vimrc' > ~/.vimrc

# Source the bashrc file
echo 'source ~/git/odroid-setup/bashrc' >> ~/.bashrc

# Source the bashrc file from bash_profile
echo 'source ~/.bashrc' >> ~/.bash_profile

# Add the user to the dialout group for communication on serial
sudo usermod -a -G dialout odroid
