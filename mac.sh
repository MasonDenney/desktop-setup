#/bin/sh

# Helpful guide
# https://sourabhbajaj.com/mac-setup/

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# iTerm
brew install --cask iterm2

# omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# omz theme p10k (iTerm can install font automatically)
##git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
## #SET ZSH_THEME to "powerlevel10k/powerlevel10k"
brew install powerlevel10k
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

# omz plugins
# zsh-autosuggestions
## git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
## #ADD zsh-autosuggestions to plugins in .zshrc
brew install zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting
## git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
## #ADD zsh-autosuggestions to plugins in .zshrc
brew install zsh-syntax-highlighting
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# kubectl aliases
## READ https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/kubectl/README.md
## ADD kubectl to omz plugins
## ALTERNATIVE IS https://github.com/ahmetb/kubectl-aliases

#VMs
#brew install --cask virtualbox

# docker
brew install docker

# kubectl
brew install kubectl

# colima
brew install colima
colima start default --kubernetes --cpu 2 --memory 4 --disk 10
brew services start colima

# infra tools
brew install helm 
# brew install pre-commit kubeconform actionlint

# KREW (kubectl plugins)
# brew install krew

# CLI TOOLS
#https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/
#brew install coreutils
## EDIT PATH TO REFERENCE coreutils libexec before mac defaults
brew install ripgrep tree wget
brew install netcat nmap

# CLOUD TOOLS
brew install gh
brew install awscli gcloud-cli

# VERSIONED TOOLS
#brew install asdf
#brew install tfenv
#brew install pyenv
#brew install uv
#brew install sdkman
#brew install nvm
#brew install rbenv
