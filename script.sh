#!/bin/bash

# Atualiza os pacotes e instala as ferramentas essenciais
sudo apt update && sudo apt upgrade -y
sudo apt install -y git ca-certificates curl zsh 
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Adicionar repositório 
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Muda o shell padrão para zsh
chsh -s $(which zsh)

# Adicionar ao ~/.zshrc 
# Plugin NVM

# Instala o Node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install 20

# Instala o Python e o pip
sudo apt install -y python3 python3-pip

# Instala o Android Studio (inclui o SDK do Android e o Kotlin)
sudo snap install android-studio --classic

# Instalar Visual Studio Code
sudo snap install --classic code

# Instalar o IntelliJ IDEA Community
sudo snap install intellij-idea-community --classic

# Instala o navegador Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# Limpeza
sudo apt autoremove -y
rm google-chrome-stable_current_amd64.deb

# Instala o Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
# Teste Docker
sudo docker run hello-world

echo "Ambiente de desenvolvimento configurado com sucesso!"


