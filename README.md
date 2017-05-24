# Unathi's dotfiles

This is my new dotfile repository. I decided to start a new dotfile repository, the reason being that I found new and convinient way to manage my dotfiles without any hassle. This management system requires no extra tooling or symlinks and allows for easier pull and updates to the repository.

The basic setup consists of a bare git repository, the work tree of the repository is set up to be my home directory.  The command `config` is then aliased to `'git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'` and then basically you'd use `config` as you'd use `git`, for example showing all the untracked files in your home is probably not what you want so you can disable it using following command `config config status.showUntrackedFiles no`. 

Then this repo can be pulled in to the home directory of a new machine with the command  `git clone --separate-git-dir=~/.myconf /path/to/repo ~`.

![scrot](https://i.redd.it/yvmw0xjqd2yy.png)

## Setup

- Application Launcher: `dmenu2`
- Bar: `polybar`
- Compositor: `compton`
- Font: `tewi 7px`
- Music Player: `ncmpcpp`
- Notifications: `dunst`
- Shell: `zsh`
- Text Editor: `neovim`
- Web Browser: `firefox`
- Window Manager: `i3-gaps`

## Other

Some of the other programs referenced in these dotfiles can be found in accompanying repo

https://github.com/Unathi-Skosana/bin
