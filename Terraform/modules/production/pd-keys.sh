#!/bin/bash
sudo useradd -m -s /bin/bash buildserver
sudo mkdir /home/buildserver/.ssh
sudo cat /home/isakovasvitlana/bs_pd.pub >> /home/buildserver/.ssh/authorized_keys
sudo chown -R buildserver:buildserver /home/buildserver
sudo chmod 600 /home/buildserver/.ssh/authorized_keys
sudo rm /home/isakovasvitlana/bs_pd.pub
sudo rm /home/isakovasvitlana/pd-keys.sh
sudo touch buildserver
sudo echo "buildserver ALL=(ALL) NOPASSWD: ALL" > buildserver
sudo mv buildserver /etc/sudoers.d/