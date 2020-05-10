# dotfiles

Personally customized settings for how I use my command line, based on <https://github.com/mathiasbynens/dotfiles>.

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
Right now I'm using a mixed setup where I have `python` and `python@3.8` (current as of writing) versions of Python available.
I also use `jupyter notebook` and `jupyter lab` occasionally for more interactive Python development.
If I want a specific version of Python and various package dependencies, I need to
manually create a virtual environment using `virtualenv` or `python -m venv`.
At some point I will try switching my setup to use `anaconda` and `conda`, but so far I've mostly been dealing with basic scripts so I haven't needed it.

## Scripts
Extra scripts that I wanted on my path (e.g. `wabt` WebAssembly tools that had to be manually compiled) are placed in the .scripts folder.
If I think I will need to update / recompile these scripts often, I might consider alternative solutions besides just storing the binaries here, but for now this should be good enough.

