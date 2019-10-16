Learning basiс container for java application - amazoncorretto

1.Installing last docker to Debian (For Production Server i use Debian OS)
  1.1 sudo apt install  -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
      sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
      sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs)      stable"
      sudo apt update 
      sudo apt-cache policy docker-ce
      sudo apt -y install docker-ce
      sudo usermod -aG docker isakovasvitlana
  1.2 
