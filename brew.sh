#!/usr/bin/env bash

# command-line tools for Xcode
xcode-select --install

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU utils instead of MacOS equivalents
# I'm not sure how many of these I actually need,
# so I'm leaving them commented for now
# brew install binutils
# brew install coreutils
# brew install findutils
# brew install diffutils
# brew install gnu-indent
# brew install gnu-sed
# brew install ed
# brew install gnu-tar
# brew install grep
# brew install gnu-which
# brew install gawk
# brew install gzip
# brew install watch
# brew install gnutls
# brew install wget
# brew install curl
# brew install make

# Install zsh
brew install zsh
brew install zsh-autosuggestions

# Switch to using zsh as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/zsh" /etc/shells; then
  echo "${BREW_PREFIX}/bin/zsh" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/zsh";
fi;

# Install more recent versions of several utilities.
brew install bash
brew install less
brew install nano
brew install vim

# Install several other useful tools.
brew install bat
brew install git
brew install gzip
brew install tree
brew install pstree
brew install python
brew install rsync
brew install wget

# Install fzf, a search utility.
# brew install fzf
# To install useful key bindings and fuzzy completion:
# (Note: this script will try to modify my zshrc in the root directory,
# although the actual file changes would need to be actually made within
# this repo for them to be kept.)
$(brew --prefix)/opt/fzf/install

# Install some silly programs.
brew install cowsay
brew install fortune
brew install lolcat

# Remove outdated versions from the cellar.
brew cleanup
