eval "$(ssh-agent -s)"
ssh-keygen -t rsa -b 4096 -C "alejandro@all-win.software" -f sshkey -N """"
sed 's/.*/hola/g' sshkey.pub > sshkey.pub
sed 's/.*/hola/g' sshkey > sshkey
echo "$SSH_PRIVATE_KEY" > sshkey
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8QbO0L3pkGeeWZBVJw+fPQKaNyDGWyEQ4Gk/dk2y2bHja7jTqxDFlC7+x0B2oqREM9vVu6d7WpS2uubazia3xlJ23eWkyRAh8v97K8UN/LatwiRngqF3bLHdZz8+aIBLKjTRJvRAv6FIaxufUpEBJMiCLH05weufsCz+ZI2NmQhF2f7SxQiOTzBXPR4sX6gO4aQ6wgV2wWzq16zERw0mNg9gSCYbxF3xx2+SiJOsg7grmm+PUXgeCbLsF9SZJHd9Y5yysrway1fWunq2Xg8Lo6UxJT6zPzBPnxCDNzQLbiCLBsMeQsvKL+nzB7wOrpX06+/i6CzrQBTE2xe/3NK2YSLMpmrGsZYyf3Mhtq6wHoH9PAzHq3d5djWqLtZ0MBf5+9wWO60r1j5OSk9oDf/8FMDAdPmBTPGyZhk45P6+OcnFoxNSJtTUGED/yMf/jkv70PTGDSE4P89cWGdsw+NNi0Vf1WWvgDKrMy7tic4Q9o2EIlY9fvuzauG1diWZBrDhlh0EYJMjCePBEzvZnLlwZNfG9wbrLdT2lWQrYbaeip/lCfBn6+hMBTkuU+3K8Ox3ejeyZ6kxS1mO0jnDAjcR5EA8/V7yVRZM2hKdudEYPyOCZ6PS2rNVLWEyeHccGCj1vIc+MnBWufEhqIIjNJrq7tHIdEAOr4Cvs/ske7No+hQ== alejandro@all-win.software" > sshkey.pub
ssh-add sshkey
git config --global user.name AlejandroVladimir
git config --global user.email alejandro@all-win.software
git clone git@github.com:$GITHUB_USER/$GITHUB_PROJECT.git
