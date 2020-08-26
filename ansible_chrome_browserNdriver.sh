#!/bin/bash

# Commands to get/install chromium browser 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo yum install google-chrome-stable_current_x86_64.rpm

# Commands to get/install chrome driver 
wget -N http://chromedriver.storage.googleapis.com/2.40/chromedriver_linux64.zip -P /usr/tmp
unzip /usr/tmp/chromedriver_linux64.zip -d /usr/tmp
sudo mv -f /usr/tmp/chromedriver /usr/local/share/
sudo chmod +x /usr/local/share/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver
