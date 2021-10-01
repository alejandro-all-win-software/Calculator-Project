eval "$(ssh-agent -s)"
ssh-keygen -t rsa -b 4096 -C "alejandro@all-win.software" -f sshkey -N """"
sed 's/.*/hola/g' sshkey.pub > sshkey.pub
sed 's/.*/hola/g' sshkey > sshkey
echo -e "$SSH_PRIVATE_KEY" > sshkey
echo "$SSH_PUBLIC_KEY" > sshkey.pub
ssh-add sshkey
git config --global user.name AlejandroVladimir
git config --global user.email alejandro@all-win.software
git clone git@github.com:$GITHUB_USER/$GITHUB_PROJECT.git
