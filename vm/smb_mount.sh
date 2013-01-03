#!/bin/bash

# should mount at
# /home/vagrant/fngn_us/Matlab/Matlab/GLN/git/autojune.git

#smbclient //fngn.com/us -U fqa -W FEI
sudo smbmount "\\\\fngn.com\\us" fngn_us -o user=fqa,dom=FEI

# use the following to unmount
# sudo umount fngn_us
