#!/bin/bash

sudo umount /mnt/c
sudo mount -t drvfs C: /mnt/c -o metadata
cd /mnt/c
mkdir projetos
cd projetos
