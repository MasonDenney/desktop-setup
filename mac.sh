#/bin/sh

# Helpful guide
# https://sourabhbajaj.com/mac-setup/

# MacOS
# caffeinate
#caffeinate -disu -t 32400
# Show hidden files in Finder
#defaults write com.apple.finder AppleShowAllFiles YES; killall Finder

# Homebrew
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# iTerm
brew install --cask iterm2

# omz
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# omz theme p10k (iTerm can install font automatically)
##git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
## #SET ZSH_THEME to "powerlevel10k/powerlevel10k"
brew install powerlevel10k
#echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

# omz plugins
# zsh-autosuggestions
## git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
## #ADD zsh-autosuggestions to plugins in .zshrc
brew install zsh-autosuggestions
#echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# zsh-syntax-highlighting
## git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
## #ADD zsh-autosuggestions to plugins in .zshrc
brew install zsh-syntax-highlighting
#echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# kubectl aliases
## READ https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/kubectl/README.md
## ADD kubectl to omz plugins

#VMs
brew install --cask virtualbox  #REQUIRES SUDO TO INSTALL

# docker
brew install docker

# kubectl
brew install kubectl

# KREW (kubectl plugins)
brew install krew

# colima
brew install colima
#colima start default --kubernetes --cpu 2 --memory 4 --disk 10
#brew services start colima

# infra tools
brew install helm pre-commit kubeconform actionlint stern kubectx kubeseal kustomize

# CLI TOOLS
#https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/
#brew install coreutils
## EDIT PATH TO REFERENCE coreutils libexec before mac defaults
brew install ripgrep tree wget jq yq netcat nmap

# VERSIONED TOOLS
brew install asdf
###brew install sdkman #requires tap
###brew install jenv
brew install rbenv
brew install tfenv
#tf install latest
#tf use latest
brew install pyenv
#pyenv install 3.13.0
#pyenv global 3.13.0
brew install nvm
#redo autocompletion

# Programming
brew install uv
brew install go

# CLOUD TOOLS
brew install gh
brwe install awscli
brew install --cask gcloud-cli # requires recent but not latest python
#export PATH=/opt/homebrew/share/google-cloud-sdk/bin:"$PATH"
#source /completion.zsh.inc
#source /path.zsh.inc
#gcloud components reinstall
#export CLOUDSDK_PYTHON=X
