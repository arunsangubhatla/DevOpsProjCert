#!/bin/bash

# script to sign puppet slave cert on master through jenkins job
/opt/puppetlabs/bin/sudo puppet cert list --all
/opt/puppetlabs/bin/sudo puppet cert sign --all
