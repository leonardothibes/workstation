if [ $(id -u) -ne 0 ]; then
    alias docker='sudo docker'
    alias docker-compose='sudo docker-compose'
fi
