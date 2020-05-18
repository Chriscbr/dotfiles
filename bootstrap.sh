#!/usr/bin/env bash

echo $0;

cd "$(dirname "${BASH_SOURCE}")";

# git pull origin master;

# this synchronizes (most) of the files in here
# with the home directory (~)
function doIt() {
	rsync --exclude ".git/" \
		--exclude ".gitmodules" \
		--exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "fonts/" \
		--exclude "iterm-themes/" \
		--exclude "brew.sh" \
		--exclude "iterm-profile.json" \
		--exclude "iterm-settings/" \
		--exclude ".condarc" \
		-avh --no-perms . ~;

	# hack so that any CLI changes to .condarc will affect the correct
	# copy here (under version control) rather than just the one in the home directory
	rm -f $HOME/.condarc
	ln -s $(pwd)/.condarc $HOME/.condarc
}

if [ "$1" = "--force" ] || [ "$1" = "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
