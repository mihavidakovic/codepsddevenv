echo "Installing webpack globally"
sudo npm install -g webpack
sudo npm install -g webpack-cli
# webpack --mode=development

echo "Installing node modules required"
(cd /vagrant/codepsd; sudo npm install)