#!/bin/bash
sudo apt update
sudo apt-get install xrdp
sudo systemctl enable xrdp --now
sudo systemctl restart xrdp

# Baixar e instalar o Ransack
wget -O ransack.deb "https://example.com/ransack.deb"  # Substitua o link pela URL correta
sudo dpkg -i ransack.deb
sudo apt-get install -f -y

# Baixar e instalar o Chrome
wget -O chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo dpkg -i chrome.deb
sudo apt-get install -f -y

# Baixar e instalar o Telegram
wget -O telegram.tar.xz "https://telegram.org/dl/desktop/linux"
tar -xf telegram.tar.xz
sudo mv Telegram /opt/
sudo ln -sf /opt/Telegram/Telegram /usr/bin/telegram

# Remover arquivos .deb após a instalação
rm ransack.deb chrome.deb telegram.tar.xz

echo "Instalação concluída!"
