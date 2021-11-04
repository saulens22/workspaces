sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
rm ~/.poshthemes/themes.zip

cp poshtheme.omp.json ~/.poshthemes/saulens22.omp.json
echo 'eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/saulens22.omp.json)"' >> ~/.bashrc

echo "bind 'TAB:menu-complete'" >> ~/.bashrc
echo 'bind "set show-all-if-ambiguous on"' >> ~/.bashrc
echo 'bind "set menu-complete-display-prefix on"' >> ~/.bashrc




source ~/.bashrc
