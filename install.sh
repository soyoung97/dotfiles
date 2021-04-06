# install flake8
pip install flake8

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#!/bin/bash
DIRNAME="$(dirname "$0")"
DIR="$(cd "$DIRNAME" && pwd)"

install () {
	OLD="$HOME/.$1"
	NEW="$DIR/$1"
	if [ -f $OLD ]; then
		if [ -L $OLD ]; then
			rm $OLD
		else
			mv $OLD "$OLD.bak"
		fi
	fi
	ln -s $NEW $OLD
}

install tmux.conf
install vimrc
install bashrc
install zshrc

echo "To save the github crediential, please type the below command after you do the first push/pull"
echo "git config credential.helper store --global"
echo "Please open vimrc and type :PlugInstall to finish settings"
echo "You can add virtualenv settings at the last part of bashrc or zshrc. e.g. write: conda activate soyoung"
