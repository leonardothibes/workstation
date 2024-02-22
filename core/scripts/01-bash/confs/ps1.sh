if [ $(id -u) -eq 0 ]; then
    PS1="[\u@\h \W]# "
else
    PS1="[\u@\h \W]$ "
fi
