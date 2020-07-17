#!/bin/bash
echo -e "\n\e[38;5;135m╭─────────────────────────╮"
echo -e "│\e[38;5;220m      My Dotfiles      \e[38;5;135m  │"
echo -e "╰─────────────────────────╯"
echo -e "\e[38;5;33mMarcelo Zambrana     \e[38;5;40mv0.0.1     🚀  🎁  💥\n"
echo -e "\e[38;5;214m»»» 🙉 This script will remove & replace many of your personal dotfiles"
echo -e "\e[38;5;214m»»» 🙊 If you have anything in these files/folders, please back them up:"
echo -e "\e[38;5;214m»»» 🙈   \e[38;5;227m.bash_aliases .bashenv .gitconfig .profile .bashrc .vimrc"
echo -e "\e[38;5;214m»»» 🐵 Only continue with this script when it is ok to overwrite these files...\n\e[0m"

PROMPT="1"
if [[ $1 == "noprompt" ]]; then
  PROMPT="0"
fi
if [[ -f /.dockerenv ]]; then
  PROMPT="0"
fi

if [[ "$PROMPT" == "1" ]]; then
  read -p "Are you sure? " -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
      [[ "$0" = "$BASH_SOURCE" ]] && echo -e "\e[38;5;63m»»» 😇 OK, exiting without making changes, bye!\n\e[0m" && exit 1 || return 1 
  fi
fi

# making sure .dotfiles folder exists. Mostly when using them in GitHub Codespaces.
if [[ ! -f ~/.dotfiles ]]; then mv ~/dotfiles ~/.dotfiles; fi

#
# Create symlinks for all dotfiles
#
echo -e "\n\e[38;5;45m»»» Creating dotfile symlinks \e[0m"
for f in .gitconfig .profile .bashrc .bash_aliases .banner.rc .vimrc .terraformrc
do
  echo $f
  rm $HOME/$f 2> /dev/null
  ln -s $HOME/.dotfiles/$f $HOME/$f
done
rm $HOME/.bashenv
ln -s $HOME/.dotfiles/.env.rc $HOME/.bashenv

# Copying vim theme
mkdir -p ~/.vim/colors/
cp $HOME/.dotfiles/lib/badwolf.vim $HOME/.vim/colors/
