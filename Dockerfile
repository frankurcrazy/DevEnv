from ubuntu
run apt update && apt upgrade -y
run TZ=Asia/Taiwan DEBIAN_FRONTEND=noninteractive apt install -y sudo curl wget git htop tmux build-essential gcc make automake cmake vim-nox
run curl -sL https://deb.nodesource.com/setup_12.x | bash -
run apt install -y nodejs
run echo "frank ALL=(ALL) NOPASSWD:ALL" | tee /etc/sudoers.d/frank
run useradd frank -m -s /bin/bash -G sudo

user frank
workdir /home/frank

# Install vundle
run git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
add dot.vimrc /home/frank/.vimrc
run vim +PluginInstall +qall

# Install pyenv
run curl https://pyenv.run | bash
run echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
run echo 'eval "$(pyenv init -)"' >> ~/.bashrc
run echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
