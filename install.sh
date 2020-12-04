#!/bin/sh

dirpath=$HOME/repos/dotfiles

if [ ! -f "$HOME/dot/install.sh" ]; then
  echo "must be cloned at ~/dot/"
  exit 1
fi

for fn in gitconfig; do
  src="$dirpath/${fn}"
  dest="$HOME/.${fn}"
  if [ -e $dest ]; then
    echo "skipping $fn; already exists in homedir"
  else
    echo "linking $fn"
    ln -s $src $dest
  fi
done


if grep -q ". $dirpath/zshrc" "$HOME/.zshrc"; then
  echo "skipping source of zshrc; already in ~/.zshrc"
else
  echo "Adding source of ~/repos/dotfiles/zshrc to ~/.zshrc"
  cat >> "$HOME/.zshrc" <<EOF
if [ -f $dirpath/zshrc ]; then
	. $dirpath/zshrc
fi
EOF
fi
