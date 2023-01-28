# Remove machine name from bash console

# Make a backup of .bashrc (if it doesn't already exist)
[ ! -f ~/.bashrc_backup ] && cp ~/.bashrc ~/.bashrc_backup

# Replace  \u@\h\  with  \u\
sed -i 's/\]\\u@\\h\\\[/\]\\u\\[/g' ~/.bashrc

# so this:
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#                                                       ||||||
# becomes this:
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#                                                       |||

echo -e "\n${YELLOW}NOTE: Exit and enter bash to apply, or run the following command:${ENDCOLOR}  ${GREEN}source ~/.bashrc${ENDCOLOR}\n"
