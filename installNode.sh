# shell script to install node js using binaries

# check if curl is installed in system else install the curl
if ! [ -x "$(command -v curl)" ]; then
  echo 'Error: curl is not installed.' >&2
  echo 'Installing curl'
  sudo apt-get install curl
fi

# install node js using curl
cd ~
curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
sudo apt install nodejs -y
sudo npm i pm2 -g
node -v
npm -v
pm2 -v