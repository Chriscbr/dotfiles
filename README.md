# dotfiles

Personally customized, based on <https://github.com/mathiasbynens/dotfiles>.

## Manual installations

Install the iTerm2 theme located at `material-design-colors.itermcolors` through the iTerm2 preferences > Profiles > Colors.

## fonts

Currently using [Nerd Font patched version of SF Mono](https://github.com/Twixes/SF-Mono-Powerline).
Previously have used SF Mono patched with Powerline, and Fira Code patched with Nerd Fonts.

## iTerm profile

Profile is saved in `iterm-profile.json`.
To import it, go to Profiles > Other actions (at the bottom left) > Import JSON Profiles.

Settings are saved in `/iterm-settings`.
To import it, go to General > Preferences > Load preferences from a custom folder or URL.

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

## Scripts
Extra scripts that I wanted on my path (e.g. wabt WebAssembly tools that had to be manually compiled) are placed in the .scripts folder.
If I think I will need to update / recompile these scripts often, I might consider alternative solutions besides just storing the binaries here, but for now this should be good enough.

