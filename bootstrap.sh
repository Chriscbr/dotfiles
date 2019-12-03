#!/usr/bin/env bash

echo $0;

cd "$(dirname "${BASH_SOURCE}")";

# git pull origin master;

# this synchronizes (most) of the files in here
# with the home directory (~)
function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "fonts/" \
		--exclude "brew.sh" \
		--exclude "material-design-colors.itermcolors" \
		-avh --no-perms . ~;
	# commented out, since this doesn't seem to work on macOS Catalina
    # cd fonts;
    # rsync -avh --no-perms . /Library/Fonts;
    cd ..;
	# source ~/.bash_profile;
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
