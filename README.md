# dotfiles

Personally customized, based on <https://github.com/mathiasbynens/dotfiles>.

## Manual installations

Install the iTerm2 theme located at `material-design-colors.itermcolors` through the iTerm2 preferences > Profiles > Colors.

## fonts

Now currently using [Nerd Font patched version of SF Mono](https://github.com/Twixes/SF-Mono-Powerline).
It doesn't have as many of the patched-in icons as the nerd font I was previously using, but it works good enough (I could probably patch them in manually later).

~~Currently using [Nerd Font](https://github.com/ryanoasis/nerd-fonts) patched version of Fira Code. Font files also included in the repo for posterity.~~

## Update macOS defaults
```
./.macos
```

May require logging out and back in for changes to take effect.

## Install Homebrew formulae
```
./brew.sh
```

## Scripts
Extra scripts that I wanted on my path (e.g. wabt WebAssembly tools that had to be manually compiled) are placed in the .scripts folder.
If I think I will need to update / recompile these scripts often, I might consider alternative solutions besides just storing the binaries here, but for now this should be good enough.

