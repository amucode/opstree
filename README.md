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
 Enter the file we want to ignore  *.bkp , *.swp,*.pyc
 
    # git add -f .ignore
    # git commit -m "ignore file added"
we can push ignore file to central repo 
    
    # git push origin master

Assignment3:

# Add remote name parent for ot-training/jenkins to your own repo.
    
     # git remote add parent https://github.com/ot-training/jenkins.git
     
# Check and verify two remotes.
     # git remote -v 
Above command display all the remote repo . 
  
# Git fetch changes from parent repo
    # git fetch parent
The above command pull all the branch info from the central repo to local repo .
    # git branch -a                      (it will show both local and remote branch)
    # git checkout -b parent/amulya      (switch to remote branch)
    # git branch                         ( for showing present branch)
# Git merge changes into your local branch from merge.
    # git checkout branc1      (here branch1 = local branch)
    # git merge parent/amulya   (here amulya is the branch that will present in remote )
    # git push origin branch1    ( pushing changes to appear in remote)
# Git pull changes from parent repo.
    # git pull parent amulya
  Here parent = remote repo name 
       amulya = remote branch we want to pull
    # git push origin br1    (push the recent pull data to br1)
# Check for difference in fetch and pull 
 Ans - in fetch it will pull the fresh copy of code from central repo to local repo but incase of pull it will do same thing which is done incase of fetch & also  merge that code into our local . 
    i.e - git pull = git fetch + git merge
 on the above step i already  fetch code from remote & pull the code fom remote & then it will automatically merge that code  in br1 , then push that code to br1

Assignment4:
# Rename remote name from parent to main
    # git remote rename repo1 repo2
  Here repo1 = old remote repo
       repo2 = new remote repo
# Remove main remote.
    # git remote remove repo1

Assignment5:
# Save your answers in README.md into your repo.
  Ans - i already do it please check and verify

# Try to push README.md into parent repo.
    # git commit -a -m "README.md file added & committed"
    # git push parent master   (Here parent is remote url & master is branch in remote)
# Create a pull request from local repo branch4 to remote repo(parent) of br1 
![screenshot from 2018-03-21 01-48-57](https://user-images.githubusercontent.com/29882428/37680482-1138fece-2caa-11e8-9ba4-f83fca4b819c.png)
![screenshot from 2018-03-21 01-52-09](https://user-images.githubusercontent.com/29882428/37680650-8930cc4a-2caa-11e8-8cae-b347eedf094d.png)

# Assignment6:
#Create tags in your repo.
  Ans - In git there is two types tag generally we use 
     1 - lightweight tag (it is use for temorary purpose & A lightweight tag is very much like a branch that doesn’t change — it’s just a pointer to a specific commit.)
     2 - annotated tag (Annotated tags, however, are stored as full objects in the Git database. They’re checksummed; contain the tagger name, email, and date; have a tagging message)
     
