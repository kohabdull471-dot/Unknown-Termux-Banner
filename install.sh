#!/bin/bash

# 1. Update and install dependencies
pkg update && pkg upgrade -y
pkg install git figlet toilet -y

# 2. Get the current folder path
DIR=$(pwd)

# 3. Ask for the custom name
clear
echo -e "\e[1;31m--- THE UNKNOWN SETUP ---\e[0m"
read -p "Enter the name you want on your banner: " user_name
echo "$user_name" > .name.txt

# 4. Make scripts executable
chmod +x $DIR/banner.sh

# 5. The "Permanent" Trick: Add to .bashrc
# This makes sure banner.sh runs every time Termux starts
if ! grep -q "banner.sh" ~/.bashrc; then
  echo "bash $DIR/banner.sh" >> ~/.bashrc
  echo -e "\e[1;32m[+] Banner installed permanently!\e[0m"
else
  echo -e "\e[1;33m[!] Banner was already linked to system.\e[0m"
fi

echo "Please restart Termux or type 'source ~/.bashrc' to see it!"
