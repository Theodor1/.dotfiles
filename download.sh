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
