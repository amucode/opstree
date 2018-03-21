#!/bin/bash
echo "Enter the Directory Location:"
read dir
mkdir -p $dir 
echo "Enter the File Name :"
read file && cd $dir && touch $file
echo "Enter First code :"
read input
echo "$input" >$dir/$file
cd $dir
git add $file
git commit -m "1st commit for git bash script"
git push -u amulya master
git branch branch4
git commit -m "New branch added"
git push -u amulya branch4
git checkout  branch4
echo "Enter Second code here :"
read input
echo "$input" >$file
git commit -a -m "2nd commit on branch"
git checkout master
git merge branch4
git mergetool
git commit -a -m "resolved conflict"
git push -u amulya branch4
