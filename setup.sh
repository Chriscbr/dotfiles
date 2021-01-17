#!/usr/bin/env bash
set -eu

if [ "$OSTYPE" = darwin* ]; then
    # install macOS XCode command-line utilities
    xcode-select --install

    # install brew dependencies
    echo "Installing/updating brew dependencies..."
    brew bundle
fi

# install or update powerlevel10k, used for our custom zsh theme
if [ -d ~/powerlevel10k ]; then
    git -C ~/powerlevel10k pull
else
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
fi

# install or update oh-my-zsh, used for convenience plugins
if [ -d ~/.oh-my-zsh ]; then
    git -C ~/.oh-my-zsh pull
else
    git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
fi

# install zsh-auto-suggestions
ZSH_AUTOSUGGESTIONS_PATH=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
if [ -d $ZSH_AUTOSUGGESTIONS_PATH ]; then
    git -C $ZSH_AUTOSUGGESTIONS_PATH pull
else
    git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions $ZSH_AUTOSUGGESTIONS_PATH
fi

# install zsh-syntax-highlighting
ZSH_SYNTAX_HIGHLIGHTING_PATH=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
if [ -d $ZSH_SYNTAX_HIGHLIGHTING_PATH ]; then
    git -C $ZSH_SYNTAX_HIGHLIGHTING_PATH pull
else
    git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_SYNTAX_HIGHLIGHTING_PATH
fi

# try changing the shell to zsh
chsh -s $(which zsh)

echo "Setup complete!"
