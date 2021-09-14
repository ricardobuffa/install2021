apt clean
apt update -m
dpkg --configure -a
apt install --assume-yes -y -f
apt dist-upgrade --assume-yes -y
apt autoremove --assume-yes -y --purge
apt autoclean --assume-yes -y
apt update
