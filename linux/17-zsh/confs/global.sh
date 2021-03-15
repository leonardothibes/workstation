#ZSH global install

apt-get install -y zsh fonts-powerline
git clone https://github.com/robbyrussell/oh-my-zsh.git /etc/oh-my-zsh
cp /etc/oh-my-zsh/templates/zshrc.zsh-template /etc/skel/.zshrc
mkdir -p /etc/skel/.oh-my-zsh/cache

sed -i 's/export ZSH=$HOME\/.oh-my-zsh/export ZSH=\/etc\/oh-my-zsh\nexport ZSH_CACHE_DIR=~\/.oh-my-zsh\/cache/' /etc/skel/.zshrc
sed -i 's/ZSH_THEME="robbyrussell"/#ZSH_THEME="robbyrussell"\nZSH_THEME="agnoster"/' /etc/skel/.zshrc
sed -i 's/\(SHELL=\/bin\/\)sh/\1zsh/' /etc/default/useradd
