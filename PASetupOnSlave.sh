#!/bin/bash

# script to setup puppet agent on slave through jenkins job
#sudo echo "10.0.2.136  ip-10-0-2-136.ec2.internal">>/etc/hosts #ip & hostname of master
#sudo echo "10.0.2.43   ip-10-0-2-43.ec2.internal">>/etc/hosts  #ip & hostname of slave(s)

sudo rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm
sudo yum install puppet -y

#vim /etc/puppetlabs/puppet/puppet.conf
#[main]
#server = ip-10-0-2-136.ec2.internal #ip & hostname of master
#exec bash -l

sudo systemctl start puppet
sudo systemctl status puppet
