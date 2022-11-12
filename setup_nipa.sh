echo -e 'export PS1="[$NSML_PROJECT#$NSML_STUDY.$NSML_RUN] $PS1"' > ~/.bashrc
echo -e 'export HF_DATASETS_CACHE="/mnt/prj/.cache"; export TRANSFORMERS_CACHE="/mnt/prj/.cache"; export TMPDIR="/mnt/prj/.cache"' >> ~/.bashrc
echo -e 'alias py3="conda activate soyoung"' >> ~/.bashrc
echo -e 'alias tmux-soyoung="tmux -L soyoung -f /mnt/prj/soyoung/dotfiles/soyoung_tmux.conf"' >> ~/.bashrc
echo -e 'alias ls="ls --color=auto"' >> ~/.bashrc
source ~/.bashrc


curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "If curl is not installed, install it by apt install curl"
sudo apt install tmux
install vimrc ~/.vimrc
echo "Please open vimrc and type :PlugInstall"

git config --global user.email "lovelife@kaist.ac.kr"
git config --global user.name "soyoung97"
git config credential.helper store --global
