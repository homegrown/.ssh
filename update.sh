#!/bin/bash
clear
cd ~/.ssh
git pull
sed -i /$1/d ~/.ssh/authorized_keys
cat keys/$1.pub >> ~/.ssh/authorized_keys
