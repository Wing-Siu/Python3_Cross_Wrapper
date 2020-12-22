sudo su
ifconfig
sed -i '' 's/#ASSUME_ALWAYS_YES = false;/ASSUME_ALWAYS_YES = true;/g' /usr/local/etc/pkg.conf
pkg install python37 zip py37-pip
cp -r /home/vagrant/source_code/ /home/vagrant/workspace
cd /home/vagrant/workspace
chmod +x wrapper/FreeBSD.sh
./wrapper/FreeBSD.sh
cd dist
zip $PROJECT_NAME-$(uname)-$(uname -m).zip *
mv *.zip /home/vagrant/output_bin
