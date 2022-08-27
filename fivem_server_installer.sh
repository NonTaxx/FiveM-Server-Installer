### Spalvos ###
red=`tput setaf 1`
green=`tput setaf 2`
black=`tput setaf 0`
blue=`tput setaf 4`
white=`tput setaf 7`
yellow=`tput setaf 3`
reset=`tput sgr0`
### Credits ###
clear
echo -e "${blue}Creator: ${white}NonTax#8177 ${reset}"
echo -e "${blue}TxAdmin build version: ${white}3181 ${reset}"
echo -e "${blue}Latest update date: ${white}2022-08-27 ${reset}"
echo -e "${blue}Version: ${white}1.0 ${reset}"
read -p "Press ENTER to begin."
### Update ###
clear
echo -e "${red}SYSTEM UPGRADE ${reset}"
sleep 3
clear
sudo apt-get update -y
clear
sudo apt-get upgrade -y
clear
echo -e "${white}System upgrade is successful. ${reset}"
sleep 3
clear
### Tool installation ###
echo -e "${red}SERVER TOOLS INSTALATION ${reset}"
sleep 3
clear
sudo apt install -y screen
clear
apt-get install -y git
clear
apt-get install -y xz-utils
clear
echo -e "${white}Server tools installion are successful. ${reset}"
sleep 3
clear
### DataBase installation ###
echo -e "${red}DATABASE INSTALLATION ${reset}"
sleep 3
clear
apt-get install -y apache2
clear
apt-get install -y php
clear
apt-get install -y mysql-server
clear
echo -e "${white}When you will see a text field you will need to press SPACE button on Apache2, when you will do that you will need to press ENTER. ${reset}"
sleep 5
apt-get install -y phpmyadmin
clear
echo -e "${white}DataBase installation was successful. ${reset}"
sleep 3
clear
### DataBase configuration ###
echo -e "${red}DATABASE CONFIGURATION ${reset}"
sleep 3
clear
### Enter password ###
echo -n Password: 
read -s password
echo
    mysql -e "CREATE DATABASE ${essentialmode} /*\!40100 DEFAULT CHARACTER SET utf8 */;"
    mysql -e "CREATE USER 'admin'@'localhost' IDENTIFIED BY '${password}';"
    mysql -e "GRANT ALL PRIVILEGES ON * . * TO 'admin'@'localhost';"
    mysql -e "FLUSH PRIVILEGES;"
clear
echo -e "${white} DataBase configuration is successful. Your DataBase website: ip_adresas/phpmyadmin, UserName: admin, Password: ${password} ${reset}"
cd /home
echo "TxAdmin logins = UserName: admin, Password: server555
PhpMyAdmin logins = Username: admin, Password: ${password}" >> logins.txt
sleep 8
### Server installation ###
echo -e "${red}SERVER INSTALATION ${reset}"
sleep 3
clear
cd /home
clear
wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/5834-f9b6debc781432a35d60a799dbb134d6d6685aea/fx.tar.xz
clear
tar xf fx.tar.xz
clear
cd /home
clear
git clone https://github.com/citizenfx/cfx-server-data.git
clear
rm fx.tar.xz
clear
git clone https://github.com/NonTaxx/FiveM-Server-Installer
clear
mv /home/Fivem-Installer/assets/server.cfg /home/
clear
rm -r Fivem-Installer
clear
cd /home
clear
git clone https://github.com/NonTaxas/txData
clear
echo -e "${white}Server installation was successful. ${reset}"
sleep 3
### Server startup ###
echo -e "${red}SERVER STARTUP ${reset}"
sleep 3
clear
screen bash /home/run.sh