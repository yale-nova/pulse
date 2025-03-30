#!/bin/bash

# Turn swap off
# This moves stuff in swap to the main memory and might take several minutes
sudo swapoff -a

# Create an empty swapfile
# Note that "1G" is basically just the unit and count is an integer.
# Together, they define the size. In this case 32GB.
sudo dd if=/dev/zero of=/media/data_ssds/swapfile bs=1G count=32

# Set the correct permissions
sudo chmod 0600 /media/data_ssds/swapfile

sudo mkswap /media/data_ssds/swapfile  # Set up a Linux swap area
sudo swapon /media/data_ssds/swapfile  # Turn the swap on