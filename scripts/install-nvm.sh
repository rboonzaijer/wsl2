# https://github.com/nvm-sh/nvm#install--update-script

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install lts/*
nvm use lts/*

source ~/.bashrc

#npm install -g yarn
corepack enable

echo 'node'
node -v
echo 'npm'
npm -v
echo 'yarn'
yarn -v
