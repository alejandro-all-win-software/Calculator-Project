bash
eval "$(ssh-agent -s)"
mkdir -p ~/.ssh
cd ~/.ssh/
echo "$SSH_PRIVATE_KEY" | ssh-add -
chown $(whoami) ~/.ssh/sshkey
chmod 600 ~/.ssh/sshkey
cd
git config --global user.name AlejandroVladimir
git config --global user.email alejandro@all-win.software
git clone git@github.com:$GITHUB_USER/$GITHUB_PROJECT.git
