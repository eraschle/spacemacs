curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update -y
#ruby
sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn subversion

#rbenv
cd ~
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.6.1
rbenv global 2.6.1
gem install bundler

#source code pro
cd Downloads
wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
if [ ! -d "~/.fonts" ] ; then
    mkdir ~/.fonts
fi
unzip 1.050R-it.zip 
cp source-code-pro-*-it/OTF/*.otf ~/.fonts/
rm -rf source-code-pro* 
rm 1.050R-it.zip 
cd ~/
fc-cache -f -vall bundler
rbenv rehash

#rails
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

gem install rails
rbenv rehash

#mysql
sudo apt-get install -y mysql-server mysql-client libmysqlclient-dev

#oracle java
sudo add-apt-repository ppa:linuxuprising/java

sudo apt-get update -y
sudo apt-get install -y oracle-java11-installer
sudo apt-get install -y oracle-java11-set-default
## deinstall
## sudo apt-get remove oracle-java11-installer
## AND REMOVE REPO IN software & Updates

#neo4j
wget -O - https://debian.neo4j.org/neotechnology.gpg.key | sudo apt-key add -
echo 'deb http://debian.neo4j.org/repo stable/' >/tmp/neo4j.list
sudo mv /tmp/neo4j.list /etc/apt/sources.list.d
sudo apt-get update -y
sudo apt-get install -y neo4j
sudo service neo4j restart
# firefox http://localhost:7474/browser/

#emacs-dependencies
sudo apt-get install silversearcher-ag

#emacs
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt update -y
sudo apt install -y emacs26

#spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
#my setting
git clone https://github.com/eraschle/spacemacs.git ~/.spacemacs.d

#echo STUFF To Do
#echo set neo4j password > firefox http://localhost:7474/browser/

# emacs
