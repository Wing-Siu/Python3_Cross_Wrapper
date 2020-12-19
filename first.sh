echo "======================="
echo "                       "
echo "     Install Docker"
echo "                       "
echo "======================="
apt install apt-transport-https ca-certificates curl software-properties-common gnupg2 -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
apt update
apt install docker-ce -y


echo "======================="
echo "                       "
echo "   Install Virtualbox"
echo "                       "
echo "======================="
echo "deb https://download.virtualbox.org/virtualbox/debian  buster contrib" > /etc/apt/source.list.d/virtualbox.list
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -
apt update
apt install virtualbox-6.0 -y

echo "======================="
echo "                       "
echo "     Install Vagrant"
echo "                       "
echo "======================="
apt install vagrant -y
vagrant plugin install vagrant-libvirt
vagrant plugin install vagrant-rsync-back
