# bashrc
pwd
cd ~/.dotfiles
git pull origin master
cd
pwd

if [ -f ~/.bash_git ]; then
  source ~/.bash_git
  . ~/.bash_git
fi
