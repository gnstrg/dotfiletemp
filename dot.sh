#!/bin/bash
sudo apt update
# Baixar e instalar o Ransack
wget -O ransack.deb "https://example.com/ransack.deb"  # Substitua o link pela URL correta
sudo dpkg -i ransack.deb
sudo apt-get install -f -y

# Baixar e instalar o Chrome
wget -O chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo dpkg -i chrome.deb
sudo apt-get install -f -y

# Baixar e instalar o Telegram
sudo snap install telegram-desktop

# Remover arquivos .deb após a instalação
rm ransack.deb chrome.deb

