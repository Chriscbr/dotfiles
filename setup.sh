if [[ "$OSTYPE" == darwin* ]]; then
    # install macOS XCode command-line utilities
    xcode-select --install

    # install brew dependencies
    echo "Installing/updating brew dependencies..."
    brew bundle
fi

# install or update powerlevel10k, used for our custom zsh theme
if [[ -d ~/powerlevel10k ]]; then
    git -C ~/powerlevel10k pull
else
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
fi

echo "Setup complete!"
