


if [ $(id -u) -ne 0 ]; then
	echo "This script must be ran as root"
	exit 1
fi


clear

export BLUE='\033[1;94m'
export GREEN='\033[1;92m'
export RED='\033[1;91m'
export RESETCOLOR='\033[1;00m'




echo " $GREEN$BLUE******* Berserk installer ********$RESETCOLOR\n"
echo ""
echo " $GREEN$BLUE >>>>> Installing Modules "
sudo apt-get install tor -y -qq
sudo apt-get install privoxy -y -qq
sleep 0.5
echo " $GREEN$BLUE >>>>> Installing dependencies$RESETCOLOR\n "
sudo pip install validator_collection tldextract user-agents
sleep 0.5
echo "$GREEN$BLUE >>>>> Installing Berserk$RESETCOLOR\n "
sudo cp -ar berserk-config /usr/bin/
sudo cp berserk /usr/bin/berserk
sudo chmod +x /usr/bin/berserk
sleep 0.5
echo " $GREEN$BLUE:::::::: [Done] ::::::::$RESETCOLOR\n "
sleep 0.5
echo " $GREEN$BLUE >>>>> Fire up your terminal and type in 'berserk' for usage$RESETCOLOR\n"

