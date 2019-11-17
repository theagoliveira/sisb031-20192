#!/usr/bin/env bash

## Instalando o Ruby no Ubuntu com o rbenv (Fonte: GoRails -- https://gorails.com/setup/windows/10)

### Atualize o sistema com o comando abaixo (pode demorar alguns minutos)

echo "Atualizando sistema"
sudo apt-get update

### Instale as dependências do Ruby com o comando abaixo (pode demorar vários minutos)

echo "Instalando dependências do Ruby"
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev

### Instale o rbenv com os comandos abaixo (atenção: execute um comando de cada vez, apertando Enter)

echo "Instalando rbenv"
cd || exit
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
. ~/.bashrc

echo "Instalando ruby-build"
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
. ~/.bashrc

### Instale o Ruby com os comandos abaixo (pode demorar vários minutos)

echo "Instalando Ruby 2.6.3"
rbenv install 2.6.3
rbenv global 2.6.3

### Verifique que a instalação foi bem sucedida imprimindo a versão do Ruby na tela

echo "Checando a versão do Ruby"
ruby -v

### Instale o bundler com os comandos abaixo

echo "Instalando Bundler"
gem install bundler
rbenv rehash

## Instalando o Rails

### Instale o NodeJS com os comandos abaixo

echo "Instalando NodeJS"
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get install -y nodejs

### Desabilite o download da documentação de gems com o comando abaixo

echo "gem: --no-document" >> ~/.gemrc

### Instale o Rails com os comandos abaixo (pode demorar vários minutos)

echo "Instalando Rails 6.0.0"
gem install rails -v 6.0.0
rbenv rehash

# Checando a versão para saber se a instalação deu certo

echo "Checando a versão do Rails"
rails -v

### Instale o Yarn com os comandos abaixo

echo "Instalando Yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn
alias node=nodejs

## Instalando a interface de linha de comando do Heroku

echo "Instalando Heroku"
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
