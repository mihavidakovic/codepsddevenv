echo "Installing webpack globally"
sudo npm install -g webpack
sudo npm install -g webpack-cli
# webpack --mode=development
echo "Installing node modules required"
(cd /vagrant/codepsd; npm install)
# (cd /vagrant/codepsd; npm install node-sass --unsafe-perms)
(cd /vagrant/codepsd; webpack --watch) &