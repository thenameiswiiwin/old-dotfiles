# Thenameiswiiwin's Dotfile

Neovim, Kitty, Oh-My-Zsh, Stow, Tmux, ...

## Install 

#### A
Use this install if it is a brand new machine, and need everything setup.

```
curl -O https://raw.githubusercontent.com/thenameiswiiwin/dotfiles/main/install.sh | sh && chmod +x install.sh && ./install.sh && rm install.sh
```

#### B
Use this install if already have things like git, homebrew, node, etc.. installed.

```
brew install stow
git clone https://github.com/thenameiswiiwin/dotfiles.git ~/.dotfiles
cd $HOME/.dotfiles
stow zsh nvm tmux bin kitty
```
