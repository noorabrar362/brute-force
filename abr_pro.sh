#!/bin/bash

# ABR Fake Hacking Toolkit PRO Version

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Typing effect function
type_text() {
    text="$1"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep 0.03
    done
    echo
}

# Banner
clear
echo -e "${YELLOW}"
echo "█████╗ ██████╗ ██████╗"
echo "██╔══██╗██╔══██╗██╔══██╗"
echo "███████║██████╔╝██████╔╝"
echo "██╔══██║██╔═══╝ ██╔═══╝"
echo "██║  ██║██║     ██║"
echo "╚═╝  ╚═╝╚═╝     ╚═╝"
echo "      ABR PRO"
echo -e "${NC}"

# Platform Selection
echo -e "${CYAN}Select Platform:${NC}"
echo "1) Instagram"
echo "2) Facebook"
echo "3) Gmail"
echo "4) Twitter"
read -p "Choice: " choice

case $choice in
  1) platform="Instagram" ;;
  2) platform="Facebook" ;;
  3) platform="Gmail" ;;
  4) platform="Twitter" ;;
  *) echo "Invalid choice"; exit ;;
esac

# Username Input
read -p "Enter Target Username: " username

clear
type_text "Target acquired: $username ($platform)"
sleep 1
type_text "Initializing hacking engine..."
sleep 1
type_text "Bypassing security protocols..."
sleep 1
type_text "Establishing connection..."
sleep 1

# Fake IP Tracker
type_text "Locating IP address..."
sleep 1
fake_ip="192.168.$((RANDOM%255)).$((RANDOM%255))"
type_text "Target IP: $fake_ip"
sleep 1
type_text "Fetching geolocation..."
sleep 1
type_text "Location: Dhaka, Bangladesh"
sleep 1
type_text "Firewall Status: Active (Bypassing...)"
sleep 2

# Fake Password Dump
type_text "Dumping password database..."
for i in $(seq 1 10); do
    echo -e "${GREEN}[*] password_$i: $(openssl rand -base64 12)${NC}"
    sleep 0.3
done

# Progress Bar
type_text "Starting cracking process..."
for i in $(seq 1 100); do
    if [[ $i -eq 70 ]]; then
        echo -e "\n${RED}[WARNING] System Firewall Detected!${NC}"
        sleep 1
    fi
    if [[ $i -ge 75 && $i -le 80 ]]; then
        echo -ne "${RED}[$i%] Hacking Failed...\r${NC}"
        sleep 0.15
    else
        echo -ne "${GREEN}[$i%] Running...\r${NC}"
        sleep 0.07
    fi
done

echo -e "\n\n${RED}ACCESS DENIED.${NC}"
echo -e "${RED}HACKING FAILED.${NC}"
sleep 2

# Custom Cmatrix Animation
clear
cmatrix -C red -u 5 &
PID=$!

for i in {1..10}
do
    tput cup 0 0
    echo -e "${RED}========== HACKING FAILED ==========${NC}"
    sleep 1
    tput cup 0 0
    echo "                                   "
    sleep 0.5
done

kill $PID
clear

echo -e "${RED}SYSTEM FAILURE. SHUTTING DOWN...${NC}"
