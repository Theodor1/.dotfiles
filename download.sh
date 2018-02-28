#==============================================================
#     Meine download Datei um meine git repository
#		herunter zu laden
#
#==============================================================

#create new repository
git init		
echo "git init (ceate new repository)"
echo "done..."

#connect local repository to remote repository
git remote add origin https://github.com/Theodor1/.dotfiles.git		
echo "done..."
echo "git remote add origin https://github.com/Theodor1/.dotfiles.git"
echo "(connect local repository to remote repository)"
echo "done..."

#update local repository with remote chanes
git pull origin master
echo "git pull origin master"
echo "done..."





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
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    basename=`basename $file`
    targetname=`echo $basename | sed 's/__//'`
    echo "Moving any existing dotfiles from ~ to $olddir"
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
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$basename ~/.$targetname
done
