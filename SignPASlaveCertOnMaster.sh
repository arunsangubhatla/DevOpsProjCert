#!/bin/bash

# script to sign puppet slave cert on master through jenkins job
sudo /opt/puppetlabs/bin/puppet cert list --all
sudo /opt/puppetlabs/bin/puppet cert sign --all
