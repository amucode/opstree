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
# Create tags in your repo.
  Ans - In git there is two types tag generally we use 
     1 - lightweight tag (it is use for temorary purpose & A lightweight tag is very much like a branch that doesn’t change — it’s just a pointer to a specific commit.)
     2 - annotated tag (Annotated tags, however, are stored as full objects in the Git database. They’re checksummed; contain the tagger name, email, and date; have a tagging message)
     
    # git tag -a v1.0 -m "tag added for branch4"
 # Push tags into remote repo.   
    # git push origin v1.0 
    # git tag   (only list the tags)
    # git show v1.0   ( for seeing details)
    
 # Create tag on a one day old commit.
    First we have to identify specific commit id
    # git log -v
    # git tag -a tag_20-03-18 d76b9cd2b795258fc8e218b1ddafe68ae848baee -m "taging a specific commit of date 20"
    # git push origin tag_20-03-18
 # Checkout to a tag.
    First identify current branch
    # git branch 
    # git checkout v1.0   ( checkout to tag name v1.0)
    # git branch  ( it will show current head in tag)
    
 # Clone a repo with tag name
    # git clone  https://github.com/apmalla/opstree.git tag_20-03-18
    it will clone particular tag namely tag_20-03-18 and a directory will created in the name of tag_20-03-18
 # Clone a repo with specific branch
    # git clone -b br1 https://github.com/apmalla/opstree.git 
    
 # Clone a repo of a specific commit.
   For this we have fetch the info of that paricular commit and generate a archive file according to you .
   
    # git archive -o repo.tar.gz cc323e8363aa1e9901d5f59dcc4dc986ee604

Assignment7:
# Create git alias for different commands
   Go to .gitconfig file write below things
     
     [alias]
        st = status
        log = log -v
        commit = commit -a
            or 
      # git config --global alias.st status
      # git config --global alias.log log -v
      # git config --global alias.commit commit -a
    
    here we are creating alias st for status instead of status we can use st

# Share your aliases in alias.md
    please check and verify alias.md
# A developer is working on a feature on a branch, unfortunately he/she made a wrong commit. How would he/she recover from this situation without cleaning the working directory.

Ans - simply we do rever that commit 
      
      # git revert 8e21ba5f6c8842946fb9252651e6c49187f496f4
     the above command add a extra revert commit 
     # git revert -n 8e21ba5f6c8842946fb9252651e6c49187f496f4
     it will not commited we have to commit it manually . 
# You are working on a branch of a project. After modification, you thought that these modifications are quite less important but will work on later and for the time being, you should do some other implementation on the project using other branch. Is there any way to save your previous state of modification and get back it when required?

  Ans - we can simply use stash for that 
       
       # git stash 
     For getting that file again 
       # git stash list    (it will show all the stashed file)
       # git stash pop <stash id>  ( for get back particular stash)
       
 # Try to list all the cases, where you can use checkout in GIT
   Ans : - 
          
          1. for switching one branch to another  
             # git checkout branch1
          2. for clear unstaged changes
             # git checkout -- sample.txt  ( clear changes only in sample file)
             # git checkout -- . ( it will clear all the changes)
          3. pointing head to specific commit
             # git checkout 8e21ba5f6c8842946fb9252651e6c49187f496f4
          4. go to remote branch
              # git checkout -b remote/br1
  # make a script in which you will pass a git repo path and it will generate a html report of last 5 days commits. html report should contain all info(commit message,commit ID,author name,Commit Date)  
  
  Ans - please follow html.sh  & html report will be stored in report.html file
  
# Day 3   
# Assignment1:

# Create account on each Github,Gitlab & Bitbucket Try to findout key features and major differences between all. 
Ans : -  Both  GitLab ,GitHub & Bitbucket provide git repository hosting service .
   
   Git lab - 
     1. purely opensource & allows us to setup own private git remote server 
     2. it allows unlimited private repository for free 
     3. it is less popular than Github
     4. it provides its own CI tools for SDLC namely gitlab CI
     5. sharing features called as snippet like gist in github
     6. code are stored in the name of project not repo
     7. user mangement can be done efficiently by adding user to group  we define specific roles and access to each group
   
   GitHub - 
      - Is only hosts projects that use the Git VCS
      - It is free for public repository and for private repo we have to pay
      - GitHub is written using Ruby 
      - sharing feature is called gist
      - It comes with its own Wiki and issue tracking system.
      - permission is simple we have to decide wheteher giving access to user or not 
      - It  is largest repository 
      - It has size limitations. The file size can’t be more than 100 Mb while the repository can host 1Gb of information
      - Email notifications

   Bitbucket - 
       - User friendly environment 
       - Bitbucket Cloud has Mercurial support. 
       - it also offers free private repositories so only members can access the codebase.
       - sharing features called as snippet like gist in github
       - permission management can be done in the form of team
       
# Assignment2:
# Check for organization and repository level permission for team and users over repositories and branches.

 Ans - organization in github is something like a company where we create multiple repos and project , we are invite member to join our oraganization to perform all git operations . permission in git is something very clear there is only three permission i.e - admin , read & write 
 admin - all oeration within particular repo with adding other collaborator 
 read -  can clone,pull,fetch the code
 write - will do clone,pull,push,fetch the code 
team consist of group of members that can allow to access the repo . 

branching permission - we created protected branch for restrict specific user to push code to the branch . 

# Assignment3:

# Create a test repo in your github account, write some demo commits.
  Ans - i have already created repo namely bootcamp in my git hub account 
# Add this test repo as submodule inside your jenkins repo.
    # git submodule add git@github.com:apmalla/bootcamp.git test
     Here test is destination directory
    it create a .gitmodules directory in our repo 
    # git submodule init  (it will initializa .git directory within that folder)
    # git submodule update ( it will update .gitmodule dir within parent git repo)
    # cd test
    # echo > test.txt
    # git commit -a -m "sub module file added"
    # git push origin master   ( pushing the code to submodule repo)
# Clone jenkins repo with submodule.
    # git clone --recursive git@github.com:apmalla/bootcamp.git test  (clone bootcamp repo with name bootcamp)
# Configure & setup gitolite server to host private git server.
# Add user based permissions over your repositories and branches.
Ans - it is a a authorization layer on top of git for giving access permission to specific user. & also host private hosting git server for internal communication within organization 
      
    Generate ssh key for user & copy public key to gitolite home directory
      # ssh-keygen 
      # scp gitolite.pub amulya@localhost:/home/gitolite/
    Go to server where you want to create git server  
      # apt-get install gitolite3 
      # useradd amulya
      # passwd amulya
      # chown -R amulya:amulya /home/amulya
      # su - gitolite
      # gitolite setup -pk amulya.pub
    Go to client   
      # git clone amulya@localhost:gitolite-admin
      # cd gitolite-admin
      # ls -l
    There is two directory one is keydir and other is conf directory
    Key  - it stores all the users public key
    conf - stores the repo acess policy such as admin,read & write
      # vim conf/gitolite.conf
       
       @admin      = amulya
       @staff      = user1
        
        repo gitolite-admin
        RW+     = gitolite @admin

        repo project1
        RW+     = @all

        repo project2
        RW+     = amulya @admin
        R       = @staff
       # git commit conf/gitolite.conf -m “added new config”
       # git push origin master
       
# Create repository inside gitolite server, and clone, add, commit, push into that.
    # git remote add bootcamp git@192.168.0.19:gitolite/bootcamp.git
    # git status
    # vim conf/gitolite.conf
       
       @admin      = amulya
       @staff      = user1
       
       repo bootcamp
        RW+     = amulya @admin
        R       = @staff
     # git add .  
     # git commit -m "new reomte added"
     # git push origin master 
Go to server side and verify repository . 
