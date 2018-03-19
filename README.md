Assignment 1 : 
# I am creating a script namely merge_conflict.sh has been created in branch4  as per the direction of saurabh sir i am generating a pull request in order to verify stability of my code then i will merge that code into my master branch . 
Here i am using megetool namely vimdiff inorder to merge  the task 
# Configuration of vmdiff : -          
         # cd <your repo directory>
         # git config --globall merge.tool vimdiff
         # git config --globall merge.conflictstyle diff3
         # cat .git/config
         
 # Creating multiple branch namely br1,branch1,branch2,branch3 & branch4 , adding diffrent code into them 
 
 # Create a script to clone remote repo and check out all existing remote branch.
  
  Ans - clone_script.sh
 
 # Clone a particular folder from a remote repo.
 
 Ans - 
       
       git clone urlname foldername
       
       git clone https://github.com/apmalla/bootcamp data
  data is directory in in the remote repo bootcamp
         
Assignment2:

# Use both https and ssh protocal to clone your remote repo.

Ans - in public repo by default access is https & ssh 
  
 using https -  
 
         git clone https://github.com/apmalla/opstree.git
 using ssh -    
 
       git clone ssh://git@github.com:apmalla/opstree.git
 
 But incase of private repo we have to copy our public key into our github account & using private key we acess it 
 Goto setting > add ssh & gpg keys > here we generate ssh key or paste our server key which was generate using ssh-keygen
 
 # Change your working copy into a clonable remote repo
  
 For doing this we have to generate bare repo of our current repository , by default if we do not give destination it will generate within our current working directory . 
 
    git init amul --bare
 here amul = directory name if we do ls there  we see amul.git will generate , for sharing or cloning into another directory
      
    git clone  amulya@opstree:/home/amulya/amul.git 
 Here - amulya@opstree - server address
 Here - /home/amulya/amul.git - directory path where our bare repo present 
 
# Use file system protocal in both local and remote mode(clone from another machine using file protocal) to clone your repo.

So we can simple configure samba or nfs to share this bare repo it will help us to availabe our repo in our internal organization 

for cloning 
     
     # mkdir /abc
     # cd /abc
     # git clone smb://amulya@opstree://home/amulya/amul.git
                  or 
     # git clone nfs://amulya@opstree://home/amulya/amul.git           

# Ignore backup, swp and pyc file from being commited.

Create a .gitignore file inside the working directoy & entry these files into .ignore file

    # touch .gitignore
    # git config --global core.excludesFile ~/my_git/opstree/.gitignore
    # vim .gitignore
 Entry the file we want to ignore  *.bkp , *.swp,*.pyc
    # git add -f .ignore
    # git commit -m "ignore file added"
we can push ignore file to central repo 
    
    # git push origin master
