#!/bin/bash
sudo useradd buildserver
sudo mkdir /home/buildserver/.ssh
sudo cat /home/isakovasvitlana/bs_db.pub >> /home/buildserver/.ssh/authorized_keys
sudo chmod 600 /home/buildserver/.ssh/authorized_keys
sudo chown -R buildserver:buildserver /home/buildserver 
sudo rm /home/isakovasvitlana/bs_db.pub
sudo rm /home/isakovasvitlana/db-keys.sh

