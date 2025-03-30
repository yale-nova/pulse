#!/bin/bash


# Doc: https://docs.docker.com/config/containers/resource_constraints/#--memory-swappiness-details
sudo docker run -v /media/data_raid0/yupeng:/var/data -ti --rm --memory 16G --memory-swap -1 --memory-swappiness 100 pulse/test:v1