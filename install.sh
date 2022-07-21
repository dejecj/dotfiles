echo "alias code='/var/tmp/coder/code-server/bin/code-server'" >> $HOME/.bashrc

/var/tmp/coder/code-server/bin/code-server --install-extension mongodb.mongodb-vscode
/var/tmp/coder/code-server/bin/code-server --install-extension esbenp.prettier-vscode

sudo apt-get install redis -y
sudo service redis-server start

sudo npm i -g pm2
