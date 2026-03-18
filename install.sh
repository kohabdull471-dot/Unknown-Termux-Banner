#!/bin/bash
# Install dependencies
pkg update && pkg upgrade -y
pkg install figlet toilet -y

clear
echo -e "\e[1;31m"
figlet "THE UNKNOWN"
echo -e "\e[0m"
echo "-------------------------------------------------------"
echo -e "\e[1;32m[+] Setting up your custom Termux Banner...\e[0m"
echo "-------------------------------------------------------"

# Ask the user for their name
read -p "Enter the name you want on your banner: " user_name

# Save the name to a config file
echo "$user_name" > .name.txt

# Get current directory
DIR=$(pwd)
chmod +x $DIR/banner.sh

# Add to .bashrc if not already there
if ! grep -q "banner.sh" ~/.bashrc; then
  echo "bash $DIR/banner.sh" >> ~/.bashrc
fi

echo -e "\e[1;32m[✔] Done! Restart Termux to see '$user_name' on your banner.\e[0m"
