ssh-keygen -t rsa -b 4096 -C "alejandro@all-win.software" -f nc -N """"
cat nc.pub
git config --global user.name AlejandroVladimir
git config --global user.email alejandro@all-win.software
ssh-add nc
ssh -T git@github.com
git clone git@github.com:{GITHUB_USER}/{GITHUB_PROJECT}.git
