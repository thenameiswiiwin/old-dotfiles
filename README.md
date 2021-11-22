# Thenameiswiiwin's Dotfile

Neovim, Iterm2, Oh-My-Zsh, Stow, Tmux, ...

## Install 

#### A
Use install if it is a new machine, and need everything setup.

```
curl https://cdn.rawgit.com/thenameiswiiwin/dotfiles/main/install.sh | sh
```

#### B
Use this install if already have things like git, homebrew, node, etc.. installed.

```
brew install stow
git clone https://github.com/thenameiswiiwin/dotfiles.git ~/.dotfiles
cd $HOME/.dotfiles
stow zsh nvm tmux bin
```
