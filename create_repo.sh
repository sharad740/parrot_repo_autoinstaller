#!/bin/bash
clear
cd /etc/apt/sources.list.d/
echo -e "\e[1;33m[ Removing ] Default repo : parrot.list .... \e[0m"
sleep 2
if [ -f "parrot.list" ]
then
sudo rm /etc/apt/sources.list.d/*
else
echo -e "\e[0;31m[ File Not Found ] \e[0;33mFile parrot.list \e[0mDoesnot exist "
sleep 1
fi
echo -e "\e[0;32m[ Creating ] custom repositories ...\e[0m"
sleep 2
cd /etc/apt/sources.list.d/
if [ -f "new_repo.list"  ]
then
sudo rm new_repo.list
fi

sudo touch new_repo.list
sudo chmod 777 *
echo "deb http://mirrors.mit.edu/parrot/ rolling main contrib non-free" >> new_repo.list
echo "deb https://mirror.clarkson.edu/parrot/ rolling main contrib non-free" >> new_repo.list
echo "deb https://ftp.osuosl.org/pub/parrotos rolling main contrib non-free" >> new_repo.list
echo "deb https://mirror.wdc1.us.leaseweb.net/parrot rolling main contrib non-free" >> new_repo.list
echo "deb https://ftp.halifax.rwth-aachen.de/parrotsec/ rolling main contrib non-free" >> new_repo.list
echo "deb https://mirrors.dotsrc.org/parrot/ rolling main contrib non-free" >> new_repo.list
sudo apt update
sleep 1
echo -e "\e[1;33m[ SUCCESS ] \e[0mDONE !!! :)"
cd
