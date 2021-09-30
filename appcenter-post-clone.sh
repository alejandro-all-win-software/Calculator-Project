eval $(ssh-agent -s)
ssh-keygen -t rsa -b 4096 -C "alejandro@all-win.software" -f nc -N """"
echo $SSH_PRIVATE_KEY | tr -d '\r' | ssh-add nc
mkdir -p ~/.ssh
chmod 700 ~/.ssh
ssh-keyscan github.com >> ~/.ssh/known_hosts
chmod 644 ~/.ssh/known_hosts
git config --global user.name AlejandroVladimir
git config --global user.email alejandro@all-win.software
ssh -T git@github.com
git clone git@github.com:$GITHUB_USER/$GITHUB_PROJECT.git
