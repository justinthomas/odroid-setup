# Aliases
alias midi='rosrun korg_nanokontrol kontrol.py 3'
alias myip="ifconfig | grep -m 1 'inet addr' | egrep -o \(\([0-9]\{1,3\}.\){3\}\)[0-9]\{1,3\} | head -n1"
alias sdown='sudo shutdown -h now'
alias e='emacs -nw'
alias m='matlab -nodesktop -nosplash'
alias mrsl='ssh mrsl.grasp.upenn.edu'

# Set some session variables
export IP=$(ifconfig | grep -m 1 -A 1 'wlan' | grep 'inet addr' | egrep -o  \(\([0-9]\{1,3\}.\){3\}\)[0-9]\{1,3\} | head -n1)


