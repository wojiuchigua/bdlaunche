#!/bin/bash
git clone https://github.com/sysca11/bdlauncher /bdl --depth=1
wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.14.32.1.zip 
mkdir /mc
cd /mc
unzip /bedrock-server-1.14.32.1.zip 
cd /bdl
make LANG=EN
make install RELEASE=1 LANG=EN DESTDIR=/mc
