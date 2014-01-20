# Aliases
alias midi='rosrun korg_nanokontrol kontrol.py 3'
alias myip="ifconfig | grep -m 1 'inet addr' | egrep -o \(\([0-9]\{1,3\}.\){3\}\)[0-9]\{1,3\} | head -n1"
alias sdown='sudo shutdown -h now'
alias e='emacs -nw'
alias m='matlab -nodesktop -nosplash'
alias mrsl='ssh mrsl.grasp.upenn.edu'

alias cam='cd ~/git/odroid_camera/send_data_camera_jpeg_zmq/ && sudo ./sendData'
alias bearingA='roslaunch ~/git/ibvs_formation_bearing/launch/ibvs_formation_bearing.launch model:=QuadrotorAlpha'
alias bearingG='roslaunch ~/git/ibvs_formation_bearing/launch/ibvs_formation_bearing.launch model:=QuadrotorGolf'
alias bearingO='roslaunch ~/git/ibvs_formation_bearing/launch/ibvs_formation_bearing.launch model:=QuadrotorOscar'

alias scA='roslaunch ~/git/quadrotor/launch/state_control.launch model:=QuadrotorAlpha'
alias scG='roslaunch ~/git/quadrotor/launch/state_control.launch model:=QuadrotorGolf'
alias scO='roslaunch ~/git/quadrotor/launch/state_control.launch model:=QuadrotorOscar'

alias cA='roslaunch ~/git/quadrotor/launch/robot.launch model:=QuadrotorAlpha'
alias cG='roslaunch ~/git/quadrotor/launch/robot.launch model:=QuadrotorGolf'
alias cO='roslaunch ~/git/quadrotor/launch/robot.launch model:=QuadrotorOscar'


# Set some session variables
export IP=$(ifconfig | grep -m 1 -A 1 'wlan' | grep 'inet addr' | egrep -o  \(\([0-9]\{1,3\}.\){3\}\)[0-9]\{1,3\} | head -n1)


