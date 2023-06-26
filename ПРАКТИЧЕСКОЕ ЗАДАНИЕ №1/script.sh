#!/bin/bash

if cat /etc/apt/sources.list | grep -E "deb http://ru.archive.ubuntu.com/ubuntu/ focal-backports main restricted universe multiverse";
then echo репозиторий присутствует
else sudo sh -c "echo 'deb http://ru.archive.ubuntu.com/ubuntu/ focal-backports main restricted universe multiverse' >> /etc/apt/sources.list"

fi

sudo apt-get update
sudo apt update
sudo apt install apache2
sudo systemctl start apache2
sudo apt-get install python
python --version
sudo apt update
sudo apt-get install ssh
sudo systemctl start ssh
sudo apt install openssh-server
sudo useradd -m Test
sudo usermod -aG sudo Test
sudo echo Test:124578 | sudo chpasswd
sudo deluser --remove-all-files Test
sudo apt install vsftpd
sudo apt install xrdp
