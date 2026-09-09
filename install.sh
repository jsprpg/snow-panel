#!/bin/bash
sudo apt install gum -y >> install.log 2>&1



# --------------------------------------------------------------
#couleur
#---------------------------------------------------------------
BLACK='\033[0;30m'
WHITE='\033[1;37m'
CYAN='\033[0;36m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

#--------------------------------------------------------------
# message de lancement de l'installation
#--------------------------------------------------------------
echo -e "${CYAN}Installation du panel...${NC}"
sudo apt install whiptail -y >> install.log 2>&1


if gum confirm "voulez vous installer le panel ? "  --default "true" --affirmative "true" --negative "false"; then
    echo -e "${CYAN}Installation du panel...${NC}"
else
    echo -e "${RED}Installation annulée.${NC}"
    exit 1
fi
# whiptail --msgbox "Ceci est un message" 10 50 –title "titre de la boite"
# MENU=$(whiptail --checklist "Choisissez les modules à installer" 15 60 4 \
#    "btop" "affichage des ressources système" ON \
#    "htop" "affichage des processus en temps réel" OFF \
#    3>&1 1>&2 2>&3)

echo -e "${CYAN}----------------------------------------------------${NC}"
echo -e "${CYAN}Bienvenue dans l'installation du Snow Web Panel...${NC}"
echo -e "${CYAN}----------------------------------------------------${NC}"

echo -e "${CYAN}Lancement de l'installation du Snow Web Panel...${NC}"
#--------------------------------------------------------------
# mise a jour du systeme
#--------------------------------------------------------------
echo -e "${CYAN}Mise à jour du système...${NC}"
echo -e "${CYAN}Cette étape peut prendre un certain temps...${NC}"
echo -e "${CYAN}----------------------------------------------------${NC}"

sudo apt update && sudo apt upgrade -y >> install.log 2>&1
sudo apt upgrade -y >> install.log 2>&1
#--------------------------------------------------------------
# installation docker , postgresql , .....
#--------------------------------------------------------------
echo -e "${CYAN}Installation de Docker, PostgreSQL et autres dépendances...${NC}"
echo -e "${CYAN}Installation de Docker...${NC}"
sudo apt install docker-ce -y >> install.log 2>&1
echo -e "${CYAN}Installation de PostgreSQL...${NC}"
sudo apt install postgresql postgresql-contrib -y >> install.log 2>&1
echo -e "${CYAN}Installation de Nginx...${NC}"
sudo apt install nginx -y >> install.log 2>&1
echo -e "${CYAN}Installation de Certbot...${NC}"
sudo apt install certbot python3-certbot-nginx -y >> install.log 2>&1
echo -e "${CYAN}Installation de Git...${NC}"
sudo apt install git -y >> install.log 2>&1
echo -e "${CYAN}Instalation de Node.js et npm...${NC}"
sudo apt install nodejs npm -y >> install.log 2>&1


if [[ $MENU == *"btop"* ]]; then
    echo -e "${CYAN}Installation de btop...${NC}"
    sudo apt install btop -y >> install.log 2>&1
fi

if [[ $MENU == *"htop"* ]]; then
    echo -e "${CYAN}Installation de htop...${NC}"
    sudo apt install htop -y >> install.log 2>&1
fi

echo -e "${CYAN}Fin de l'installation des dépendances Linux.${NC}"

