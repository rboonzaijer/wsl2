# WSL-2 Quick Setup

https://learn.microsoft.com/en-us/windows/wsl/install

# Install

### Create SSH key
```
ssh-keygen -t ed25519 -C "<comment>"
```

### Clone
```
git clone git@github.com:rboonzaijer/wsl2.git
cd wsl2

# Install tools
chmod +x install.sh
./install.sh
```

# Update

```
./update.sh
```
