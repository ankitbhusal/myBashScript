#check default package manager for debian, fedora and arch
if [ -f /etc/debian_version ]; then
    pkg="apt"
    echo "Debian"
elif [ -f /etc/fedora-release ]; then
    pkg="dnf"
    echo "Fedora"
elif [ -f /etc/arch-release ]; then
    pkg="pacman"
    echo "Arch"
else
    echo "Unknown"
fi

#function to install vscode 
function installVSCode(){
    if [ -z "$(which code)" ]; then
        echo "Installing VSCode"
        sudo $pkg install code -y
    else
        echo "VSCode already installed"
    fi
}


# function to install google chrome
function installGoogleChrome(){
    if [ -z "$(which google-chrome)" ]; then
        echo "Installing Google Chrome"
        wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
        sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
        sudo $pkg update
        sudo $pkg install google-chrome-stable -y
    else
        echo "Google Chrome already installed"
    fi
}

# install nodejs 
function installNodeJS(){
    if [ -z "$(which node)" ]; then
        echo "Installing NodeJS"
        sudo $pkg install nodejs -y
    else
        echo "NodeJS already installed"
    fi
}
# installNodeJS;

#function to install npm
function installNPM(){
    if [ -z "$(which npm)" ]; then
        echo "Installing NPM"
        sudo $pkg install npm -y
    else
        echo "NPM already installed"
    fi
}
# installNPM;

# function to install yarn
function installYarn(){
    if [ -z "$(which yarn)" ]; then
        echo "Installing Yarn"
        sudo $pkg install yarn -y
    else
        echo "Yarn already installed"
    fi
}
# installYarn;