#==============================================================
#     Meine download Datei um meine git repository
#		herunter zu laden
#
#==============================================================

#create new repository
git init		
echo "***echo: git init (ceate new repository)"
echo "***echo: done..."

#connect local repository to remote repository
git remote add origin https://github.com/Theodor1/.dotfiles.git		
echo "***echo: done..."
echo "***echo: git remote add origin https://github.com/Theodor1/.dotfiles.git"
echo "***echo: (connect local repository to remote repository)"
echo "***echo: done..."

#update local repository with remote chanes
git pull origin master
echo "***echo: git pull origin master"
echo "***echo: done..."





#!/bin/bash
############################
# Init-Script
# This script creates symlinks from the home directory to any desired dotfiles in ~/.dotfiles
############################

########## Variables

dir=~/.dotfiles                    # dotfiles directory
olddir=~/.dotfiles_old             # old dotfiles backup directory
files=`ls -1 $dir/__*`    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "***echo: Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "***echo: ...done"

# change to the dotfiles directory
echo "***echo: Changing to the $dir directory"
cd $dir
echo "***echo: ...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    basename=`basename $file`
    targetname=`echo $basename | sed 's/__//'`
    echo "***echo: Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$targetname $olddir/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$basename ~/.$targetname
done







#!/bin/bash
############################
# 
# This script creates symlinks from the home directory to any desired dotfiles in ~/.dotfiles
############################

########## Variables

dir=~/.dotfiles                    # dotfiles directory
files=`ls -1 $dir/__*`    # list of files/folders to symlink in homedir

##########
# change to the dotfiles directory

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    basename=`basename $file`
    targetname=`echo $basename | sed 's/__//'`
    echo "***echo: Creating symlink to $file in home directory."
    ln -s $dir/$basename ~/.$targetname
done

