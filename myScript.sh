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

#function to install npm
function installNPM(){
    if [ -z "$(which npm)" ]; then
        echo "Installing NPM"
        sudo $pkg install npm -y
    else
        echo "NPM already installed"
    fi
}

# function to install yarn
function installYarn(){
    if [ -z "$(which yarn)" ]; then
        echo "Installing Yarn"
        sudo $pkg install yarn -y
    else
        echo "Yarn already installed"
    fi
}

# install media codecs
function installMediaCodecs(){
    if [ -z "$(which ffmpeg)" ]; then
        echo "Installing Media Codecs"
        sudo $pkg install ffmpeg -y
    else
        echo "Media Codecs already installed"
    fi
}

# install vlc
function installVLC(){
    if [ -z "$(which vlc)" ]; then
        echo "Installing VLC"
        sudo $pkg install vlc -y
    else
        echo "VLC already installed"
    fi
}

# install telegram
function installTelegram(){
    if [ -z "$(which telegram-desktop)" ]; then
        echo "Installing Telegram"
        sudo $pkg install telegram-desktop -y
    else
        echo "Telegram already installed"
    fi
}

# install obs
function installOBS(){
    if [ -z "$(which obs-studio)" ]; then
        echo "Installing OBS"
        sudo $pkg install obs-studio -y
    else
        echo "OBS already installed"
    fi
}

# install gcc compiler
function installGCC(){
    if [ -z "$(which gcc)" ]; then
        echo "Installing GCC"
        sudo $pkg install gcc -y
    else
        echo "GCC already installed"
    fi
}
# install g++ compiler
function installGPP(){
    if [ -z "$(which g++)" ]; then
        echo "Installing G++"
        sudo $pkg install g++ -y
    else
        echo "G++ already installed"
    fi
}

# install mysql server
function installMySQL(){
    if [ -z "$(which mysql)" ]; then
        echo "Installing MySQL"
        sudo $pkg install mysql-server -y
    else
        echo "MySQL already installed"
    fi
}
# install mysql client
function installMySQLClient(){
    if [ -z "$(which mysql)" ]; then
        echo "Installing MySQL Client"
        sudo $pkg install mysql-client -y
    else
        echo "MySQL Client already installed"
    fi
}

# install java default jdk
function installJava(){
    if [ -z "$(which java)" ]; then
        echo "Installing Java"
        sudo $pkg install default-jdk -y
    else
        echo "Java already installed"
    fi
}

