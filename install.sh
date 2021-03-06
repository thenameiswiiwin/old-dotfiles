#!/bin/sh

# Ask for the administrator password upfront
sudo -v

brew="/usr/local/bin/brew"
if [ -f "$brew" ]
then
	echo "Homebrew is installed"
else
	echo "Homebrew is not installed"
	echo "Homebrew requires osx command lines tools"
	echo "Installing..."
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

formulae=(
"git"
"node"
"tmux"
"neovim"
"fzf"
"zsh"
"exa"
"gh"
"romkatv/powerlevel10k/powerlevel10k"
"docker-compose"
"htop"
"speedtest-cli"
"tree"
"z"
"gnupg"
"wget"
"spotify-tui"
"n"
"java"
"tree-sitter"
"yarn"
"qmk/qmk/qmk"
)

for i in "${formulae[@]}"
do
  brew install $i
  echo "---------------------------------------------------------"
done

casks=(
"spotify"
"vlc"
"spectacle"
"nordvpn"
"1password"
"1password-cli"
"brave-browser"
"homebrew/cask-drivers/qmk-toolbox"
"google-chrome"
"iterm2"
"sublime-text"
"lulu"
"virtualbox"
"virtualbox-extension-pack"
"vagrant"
"docker"
"chrome-devtools"
"postman"
"sequel-pro"
"the-unarchiver"
"qlcolorcode"
"qlstephen"
"qlmarkdown"
"quicklook-json"
"qlimagesize"
"webpquicklook"
"suspicious-package"
"quicklookase"
"qlvideo"
"qmk-toolbox"
)

for s in "${casks[@]}"
do
  brew install --cask $s
  echo "---------------------------------------------------------"
done

echo "installing stow, for dotfiles management"
brew install stow 
echo "---------------------------------------------------------"

localGit="/usr/local/bin/git"
if [ -f "$localGit" ]
then
  echo "git is installed"
else
  echo "git is not installed"
fi
echo "---------------------------------------------------------"

echo "Tap nerd fonts"
brew tap homebrew/cask-fonts
echo "Install Victor Mono font"
brew install --cask font-victor-mono
brew install --cask font-victor-mono-nerd-font
echo "---------------------------------------------------------"

echo "GH Auth"
gh auth login
echo "Cloning thenameiswiiwn's dotfiles in to .dotfiles"
gh repo clone thenameiswiiwin/dotfiles ~/.dotfiles
echo "---------------------------------------------------------"

echo "Install packer.vim"
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
echo "---------------------------------------------------------"

echo "Changing to zsh"
chsh -s $(which zsh)
echo "---------------------------------------------------------"

echo "Installed oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
echo "---------------------------------------------------------"

echo "Installed zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "Install zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "---------------------------------------------------------"

echo "Installed powerlevel10k"
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
echo "---------------------------------------------------------"

echo "Symlink dotfiles"
rm $HOME/.zshrc
cd $HOME/.dotfiles
stow zsh bin nvim kitty keyboard
echo "---------------------------------------------------------"

echo "---------------------------------------------------------"
echo "All done!"
echo "Restart terminal"
echo "---------------------------------------------------------"

exit 0
