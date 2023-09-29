sudo apt update && apt upgrade
sudo apt install unzip wget nodejs

cd $PREFIX/usr/share/
sudo mkdir lemon

cd $HOME

wget https://github.com/h4ck3r0/Lemon-termux/archive/refs/tags/v1.2.0.zip


sudo unzip v1.2.0.zip
cd $HOME/Lemon-termux-1.2.0/.files

sudo cp -r app assets clientData includes index.js package-lock.json package.json $PREFIX//usr/share/lemon/
sudo sed -i 'ccd $PREFIX/usr/share/lemon/ && node index.js' $HOME/Lemon-termux-1.2.0/lemon
sudo cp -r $HOME/Lemon-termux-1.2.0/lemon $PREFIX/bin/
chmod +x $PREFIX/bin/lemon

cd $PREFIX/bin/lemon/
yarn add expressjs
clear
