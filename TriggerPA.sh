#!/bin/bash

echo "sudo chmod +x TriggerPA.sh"
sudo chmod +x TriggerPA.sh
echo "sudo /opt/puppetlabs/bin/puppet agent -t"
sudo /opt/puppetlabs/bin/puppet agent -t
