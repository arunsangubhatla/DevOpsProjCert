#!/bin/bash

# script to sign puppet slave cert on master through jenkins job
sudo cd /opt/puppetlabs/bin/
sudo puppet cert list --all
sudo puppet cert sign --all
