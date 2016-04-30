alias emacs='emacs-snapshot'
alias apt-upgrade='sudo apt update && sudo apt upgrade -y'
alias mongoreset="sudo service mongod stop ; sudo rm -r /var/log/mongodb /var/lib/mongodb; sudo service mongod start;"
export SCALA_HOME=/usr/share/scala
export PATH=$PATH:$SCALA_HOME/bin:~/bin
