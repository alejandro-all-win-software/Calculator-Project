eval "$(ssh-agent -s)"
echo "$SSH_PRIVATE_KEY" | ssh-add -
git config --global user.name AlejandroVladimir
git config --global user.email alejandro@all-win.software
git clone git@github.com:$GITHUB_USER/$GITHUB_PROJECT.git
