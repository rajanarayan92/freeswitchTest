# update the debian
apt update

#install wget
apt-get install wget

#Freeswitch installation, reference - freeswitch documentation
apt-get update && apt-get install -y gnupg2 wget
wget -O - https://files.freeswitch.org/repo/deb/freeswitch-1.8/fsstretch-archive-keyring.asc | apt-key add -

echo "deb http://files.freeswitch.org/repo/deb/freeswitch-1.8/ stretch main" > /etc/apt/sources.list.d/freeswitch.list
echo "deb-src http://files.freeswitch.org/repo/deb/freeswitch-1.8/ stretch main" >> /etc/apt/sources.list.d/freeswitch.list

# you may want to populate /etc/freeswitch at this point.
# if /etc/freeswitch does not exist, the standard vanilla configuration is deployed
apt-get update && apt-get install -y freeswitch-meta-all

mkdir /etc/freeswitch/directory/plivo
cp /tmp/testplivo1.xml /etc/freeswitch/directory/plivo
cp /tmp/testplivo2.xml /etc/freeswitch/directory/plivo
cp /tmp/default.xml /etc/freeswitch/directory/
