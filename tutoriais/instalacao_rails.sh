#!/bin/bash
# ATUALIZANDO SISTEMA
sudo apt-get update
# INSTALANDO DEPENDÊNCIAS DO RUBY
echo 'libssl1.1 libraries/restart-without-asking boolean true' | sudo debconf-set-selections
sudo apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev
# INSTALANDO RBENV
cd || exit
git clone https://github.com/rbenv/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> .bashrc
echo 'eval "$(rbenv init -)"' >> .bashrc
source .bashrc
# CHECANDO A VERSÃO DO RBENV
rbenv -v
# INSTALANDO RUBY-BUILD
git clone https://github.com/rbenv/ruby-build.git .rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> .bashrc
source .bashrc
# INSTALANDO RUBY 2.6.3
rbenv install 2.6.3
rbenv global 2.6.3
# CHECANDO A VERSÃO DO RUBY
ruby -v
# INSTALANDO BUNDLER
cd || exit
echo "gem: --no-document" >> .gemrc
gem install bundler
rbenv rehash
# INSTALANDO NODEJS
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get -y install nodejs
# CHECANDO A VERSÃO DO NODEJS
nodejs -v
# INSTALANDO RAILS 6.0.0
gem install rails -v 6.0.0
rbenv rehash
# CHECANDO A VERSÃO DO RAILS
rails -v
# INSTALANDO YARN
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get -y install yarn
alias node=nodejs
# CHECANDO A VERSÃO DO YARN
yarn -v
# INSTALANDO HEROKU
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
# CHECANDO A VERSÃO DO HEROKU
heroku -v
# REINICIANDO O TERMINAL
exec $SHELL
