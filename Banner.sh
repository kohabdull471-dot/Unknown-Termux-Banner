#!/bin/bash

# Colors
RED='\033[1;31m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

# Get the directory where this script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check if the name file exists, if not, use a default
if [ -f "$DIR/.name.txt" ]; then
    USER_NAME=$(cat "$DIR/.name.txt")
else
    USER_NAME="MEMBER"
fi

clear
echo -e "${GRAY}------------------------------------------------------------${NC}"
echo -e "${RED}"
# This displays the name the user chose in big letters
figlet -f standard "$USER_NAME"
echo -e "${NC}"
echo -e "${GRAY}                [ ACCESS GRANTED: THE UNKNOWN ]          ${NC}"
echo -e "${GRAY}------------------------------------------------------------${NC}"
echo -e "${GRAY} Logged in: $(date +'%D | %T') ${NC}"
echo ""
