#!/bin/bash
#By Amulya P Malla

#Fetching commit info of certain date and generate a html page
url=https://github.com/apmalla/opstree.git
echo "Enter the Directory Location to clone"
read dir
cd $dir 
git clone $url 
cd opstree

#Taking date input 
echo "Enter present date"
read pr_date
echo "Enter last date"
read ls_date

# Generate report in html format
git log --pretty=format:"%h - %an - %cd - %s" --since="$ls_date" --until="$pr_date" >report.html
