# WSL-2 Quick Setup

## Step 1: Install WSL2 + Windows Terminal

- https://learn.microsoft.com/en-us/windows/wsl/install
- https://learn.microsoft.com/en-us/windows/terminal/install
- https://learn.microsoft.com/en-us/windows/wsl/setup/environment#set-up-windows-terminal

-> Open up Windows terminal (set default to Ubuntu)

## Step 2: create SSH key

```
ssh-keygen -t ed25519 -C "dev-work-laptop-wsl2"

# -> Keep pressing ENTER (no passphrase)
```

## Step 2: clone this repo + install

This will install:
- php8.2
- php8.1 (as default, look in the install.sh to set another php version as default)
- php8.0
- php7.4
- php extensions
- composer
- nvm (node + npm)
- yarn
- git

And will hide your computer name in the terminal (in .bashrc)

```
mkdir -p ~/git
cd ~/git

git clone git@github.com:rboonzaijer/wsl2.git
cd wsl2

chmod +x install update
./install
```

## Step 3: post-setup

```
git config --global user.name "My Name"
git config --global user.email "myname@example.com"
```

### Update+Upgrade WSL2 regularly with:

```
cd ~/git/wsl2

./update
```
