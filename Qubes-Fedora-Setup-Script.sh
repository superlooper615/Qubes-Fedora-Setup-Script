sudo dnf config-manager --set-enabled rpmfusion-free rpmfusion-nonfree
sudo dnf upgrade --refresh
sudo dnf install vlc deluge libreoffice -y
sudo dnf install nano -y
git clone https://github.com/tasket/Qubes-vpn-support.git
cd Qubes-vpn-support/
wget "privateinternetaccess.com/openvpn/openvpn-strong.zip"
sudo mkdir -p /rw/config/vpn
sudo unzip openvpn-strong.zip -d /rw/config/vpn
cd /rw/config/vpn
sudo cp 'US Texas.ovpn' vpn-client.conf
cd ~
cd Qubes-vpn-support/
sudo bash ./install
sudo dnf update -y
cd ~
wget https://launchpad.net/veracrypt/trunk/1.23/+download/veracrypt-1.23-setup.tar.bz2
tar jxf *.tar.bz2
./veracrypt-*-setup-gui-x64
