#!/bin/bash

# script to sign puppet slave cert on master through jenkins job
/opt/puppetlabs/bin/puppet cert list --all
/opt/puppetlabs/bin/puppet cert sign --all
