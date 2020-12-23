# dotfiles

Personally customized settings for how I use my command line, based on <https://github.com/mathiasbynens/dotfiles>.

Designed to be imported/used as a git bare repository, as described [here](https://www.atlassian.com/git/tutorials/dotfiles).

## setup

To set it up, follow the instructions from [here](https://www.atlassian.com/git/tutorials/dotfiles).

As an additional note, since I am using a git submodule, you will also need to run `config submodule update` to separately clone the contents of the submodules, such as powerlevel10k.

You can run `exec zsh -l` at any point to reload the current dotfiles, for if you make changes to things like `.zshrc`.

Install the iTerm2 theme located at `material-design-colors.itermcolors` through the iTerm2 preferences > Profiles > Colors.

There might be some visual quirks with the shell prompt if you haven't installed a Nerd Font like the one included, or aren't currently using `zsh` as your shell.

## fonts

Currently using [Nerd Font patched version of SF Mono](https://github.com/Twixes/SF-Mono-Powerline).
I've previously used SF Mono patched with Powerline, and Fira Code patched with Nerd Fonts.

## iTerm profile

Profile is saved in `iterm-profile.json`.
To import it, go to Profiles > Other actions (at the bottom left) > Import JSON Profiles.

Settings are saved in `/iterm-settings`.
To import it, go to General > Preferences > Load preferences from a custom folder or URL.

## windowing

Right now I'm just using the built-in features for windowing in iTerm, with the commands Cmd + D and Cmd + Shift + D to split the current pane vertically or horizontally respectively, and Cmd + Option + (Direction) to switch between panes.
See [this repo](https://gist.github.com/squarism/ae3613daf5c01a98ba3a) for a more complete list of shortcuts.
At some point I may want to learn to use `screen` or `tmux`, but I haven't found a need for it yet.

I'm also using the window manager [Yabai](https://github.com/koekeishiya/yabai) with [skhd](https://github.com/koekeishiya/skhd) for commands.
Currently I haven't had the time to learn all of the work flows and keyshorts associated with managed windows, so I'm just using it to remove the animation lag when switching between virtual desktops (since macOS by default has unavoidable animations whenever you try switching desktops using Ctrl + left or Ctrl + right), and to change the default macOS mission control space-switching behavior so that Ctrl + left or right only swaps between spaces on my current monitor, for when I have multiple monitor setups (just a small QOL improvement).
I'm also hesitant to fully commit to using Yabai since it requires disabling SIP (special macOS security protections), which means I can't really expect to use it on my work devices.

## macOS defaults

```
./.macos
```

May require logging out and back in for changes to take effect.
A lot of these are bound to become out of date stop working just based on macOS updates, but I doubt any of them would accidentally change in behavior for backwards compatability reasons.

## homebrew

```
./brew.sh
```

## python

Right now I'm using anaconda for managing Python environments and versions - seems to make the most sense that homebrew has issues with staying updated with the latest Python versions, as of writing.

I also use `jupyter notebook` and `jupyter lab` occasionally for more interactive Python development.

## scripts

Extra scripts that I wanted on my path (e.g. `wabt` WebAssembly tools that had to be manually compiled) are placed in the .scripts folder.

