eval "$(ssh-agent -s)"
chmod 600 ~/.ssh/deploy_rsa
ssh-add ~/.ssh/deploy_rsa
echo -e "Copy ssh-config"
cp ssh-config ~/.ssh/config

