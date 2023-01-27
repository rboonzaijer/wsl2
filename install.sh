# Update/Upgrade
sudo apt update -y
sudo apt upgrade -y


# Remove machine name from console
cp ~/.bashrc ~/.bashrc_backup
sed -i 's/\]\\u@\\h\\\[/\]\\u\\[/g' ~/.bashrc


# Install PHP
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update -y

sudo apt install -y php8.2
sudo apt install -y php8.2-bcmath php8.2-bz2 php8.2-cli php8.2-common php8.2-curl php8.2-fpm php8.2-gd php8.2-http php8.2-imagick php8.2-imap php8.2-intl php8.2-mbstring php8.2-mcrypt php8.2-mongodb php8.2-mysql php8.2-odbc php8.2-opcache php8.2-pgsql php8.2-r>

sudo apt install -y php8.1
sudo apt install -y php8.1-bcmath php8.1-bz2 php8.1-cli php8.1-common php8.1-curl php8.1-fpm php8.1-gd php8.1-http php8.1-imagick php8.1-imap php8.1-intl php8.1-mbstring php8.1-mcrypt php8.1-mongodb php8.1-mysql php8.1-odbc php8.1-opcache php8.1-pgsql php8.1-r>

sudo apt install -y php8.0
sudo apt install -y php8.0-bcmath php8.0-bz2 php8.0-cli php8.0-common php8.0-curl php8.0-fpm php8.0-gd php8.0-http php8.0-imagick php8.0-imap php8.0-intl php8.0-mbstring php8.0-mcrypt php8.0-mongodb php8.0-mysql php8.0-odbc php8.0-opcache php8.0-pgsql php8.0-r>

sudo apt install -y php7.4
sudo apt install -y php7.4-bcmath php7.4-bz2 php7.4-cli php7.4-common php7.4-curl php7.4-fpm php7.4-gd php7.4-http php7.4-imagick php7.4-imap php7.4-intl php7.4-mbstring php7.4-mcrypt php7.4-mongodb php7.4-mysql php7.4-odbc php7.4-opcache php7.4-pgsql php7.4-redis php7.4-soap php7.4-sqlite3 php7.4-ssh2 php7.4-uuid php7.4-xdebug php7.4-xml php7.4-yaml php7.4-zip

# Set default PHP version
sudo update-alternatives --set php /usr/bin/php8.1
php -v


# Install NVM (Node/Npm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install lts/*
nvm use lts/*
source ~/.bashrc
node -v
npm -v

npm install -g yarn


# Install new GIT
git --version
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update -y
sudo apt install git -y
git --version

