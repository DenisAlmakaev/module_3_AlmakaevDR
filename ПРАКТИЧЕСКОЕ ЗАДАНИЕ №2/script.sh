#!/bin/bash

sudo tar cpf backup_home /home
sudo tar cpf backup_ssh /etc/ssh
sudo tar cpf backup_rdp /etc/xrdp
sudo tar cpf backup_var_log /var/log
sudo mkdir archive
sudo mv backup_home backup_ssh backup_rdp backup_var_log  archive
