# dotfiles

Personally customized settings for how I use my command line, based on <https://github.com/mathiasbynens/dotfiles>.

[TODO] Consider adjusting my setup and see if I can safely keep my dotfiles managed using `git bare` as described [here](https://www.atlassian.com/git/tutorials/dotfiles) instead of manually syncing with `bootstrap.sh`.
[TODO] Consider removing `prezto` as a dependency - it's not really clear if I'm using many features from it, besides probably a bunch of default settings.

## Zsh setup
My current setup is based on [prezto](https://github.com/sorin-ionescu/prezto).
To set it up, do the following:
1. Clone this repo (I usually put my repos in `~/Developer` on macOS):
```sh
git clone --recursive https://github.com/Chriscbr/dotfiles.git
```
If you forget to add --recursive when you clone this repo, then run the following in the root directory:
```sh
git submodule update --init --recursive
```
2. Make sure there isn't an existing `~/.zshrc` file (if there is, and it contains any important scripts, consider moving those scripts to `/.zprezto/runcoms/zshrc` in this repo - then delete `~/.zshrc`).
3. Run this script to sync all of your important files from the repository to your home directory:
```sh
./bootstrap.sh
```
4. Finally, restart your shell by opening a new one, or by running:
```sh
exec zsh
```

There might be some visual bugs if you haven't installed a necessary Nerd Font like the one below, or aren't currently using `zsh` as your shell.
But I've tried this once when setting up a new Mac and it worked fairly okay.

## Manual installations

Install the iTerm2 theme located at `material-design-colors.itermcolors` through the iTerm2 preferences > Profiles > Colors.

## Fonts

Currently using [Nerd Font patched version of SF Mono](https://github.com/Twixes/SF-Mono-Powerline).
Previously have used SF Mono patched with Powerline, and Fira Code patched with Nerd Fonts.

## iTerm profile

Profile is saved in `iterm-profile.json`.
To import it, go to Profiles > Other actions (at the bottom left) > Import JSON Profiles.

Settings are saved in `/iterm-settings`.
To import it, go to General > Preferences > Load preferences from a custom folder or URL.

## Windowing

Right now I'm just using the built-in features for windowing in iTerm, with the commands Cmd + D and Cmd + Shift + D to split the current pane vertically or horizontally respectively, and Cmd + Option + (Direction) to switch between panes.
See [this repo](https://gist.github.com/squarism/ae3613daf5c01a98ba3a) for a more complete list of shortcuts.
At some point I may want to learn to use `screen` or `tmux`, but I haven't found a need for it yet.

I'm also trying out the window manager [Yabai](https://github.com/koekeishiya/yabai).
Currently I haven't had the time to learn all of the work flows and keyshorts associated with managed windows, so I'm just using it to remove the animation lag when switching between virtual desktops (since macOS by default has unavoidable animations whenever you try switching desktops using Ctrl + left or Ctrl + right), and to change the default macOS mission control space-switching behavior so that Ctrl + left or right only swaps between spaces on my current monitor, for when I have multiple monitor setups (just a small QOL improvement).
I'm also hesitant to fully commit to using Yabai since it requires disabling SIP (special macOS security protections), which means I can't really expect to use it on my work devices.

## Update macOS defaults
```
./.macos
```

May require logging out and back in for changes to take effect.
A lot of these are bound to become out of date stop working just based on macOS updates, but I doubt any of them would accidentally change in behavior for backwards compatability reasons.

## Install Homebrew formulae
```
./brew.sh
```

## Python installation
Right now I'm using anaconda for managing Python environments and versions - seems to make the most sense that homebrew has issues with staying updated with the latest Python versions, as of writing.

I also use `jupyter notebook` and `jupyter lab` occasionally for more interactive Python development.

## Scripts
Extra scripts that I wanted on my path (e.g. `wabt` WebAssembly tools that had to be manually compiled) are placed in the .scripts folder.

