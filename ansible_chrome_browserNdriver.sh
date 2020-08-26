#!/bin/bash

# Commands to get/install chromium browser 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
yum install google-chrome-stable_current_x86_64.rpm

# Commands to get/install chrome driver 
wget -N http://chromedriver.storage.googleapis.com/2.40/chromedriver_linux64.zip -P /usr/tmp
unzip /usr/tmp/chromedriver_linux64.zip -d /usr/tmp
mv -f /usr/tmp/chromedriver /usr/local/share/
chmod +x /usr/local/share/chromedriver
ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
ln -s /usr/local/share/chromedriver /usr/bin/chromedriver
