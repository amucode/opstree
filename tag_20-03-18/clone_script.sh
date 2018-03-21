#!/bin/bash
#By Amulya P Malla
giturl=https://github.com/apmalla/bootcamp.git
echo "Enter the Directory Location to clone"
read dir
cd $dir && git clone $git_url && ls -l

