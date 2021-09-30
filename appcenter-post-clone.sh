tr -d '\r' | ssh-add $SSH_PRIVATE_KEY
mkdir -p ~/.ssh
chmod 700 ~/.ssh
ssh-keyscan github.com >> ~/.ssh/known_hosts
chmod 644 ~/.ssh/known_hosts
git config --global user.name AlejandroVladimir
git config --global user.email alejandro@all-win.software
ssh -T git@github.com
git clone git@github.com:$GITHUB_USER/$GITHUB_PROJECT.git
