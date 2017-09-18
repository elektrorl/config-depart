#!/bin/sh
# Install XCode (AppStore)
#xcode-select --install
#
# Install Homebrew
#
echo ""
echo "Homebrew & Homebrew Cask Apps"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#
# Install Homebrew Cask
#
brew install caskroom/cask/brew-cask
brew doctor && brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup
#2) nano /usr/local/Library/brew.rb
#3) In the first line change “1.8″ to “current”, so it should look like this:
#!/System/Library/Frameworks/Ruby.framework/Versions/current/usr/bin/ruby -W0
#via http://jcvangent.com/fixing-homebrew-os-x-10-10-yosemite/
#cd $(brew –repository) && git commit -a -m ‘new ruby version 2.0′
#
# Brew packages that I use alot.
#
brew install wget
brew install homebrew/dupes/tidy
brew install homebrew/php/php56
brew install homebrew/php/php56-xdebug
brew install homebrew/php/phpsh
brew install ffmpeg
brew install node
brew install imagemagick
#
# ORL's config.
#
brew cask install iterm2
brew cask install virtualbox
brew cask install evernote
brew cask install skype
brew cask install vlc
brew cask install plex-media-server
brew cask install dropbox dropbox-encore the-unarchiver
brew cask install renamer bittorrent-sync bitcasa github vagrant vagrant-manager
brew cask install xmarks-safari
brew cask install mou
brew cask install miro-video-converter
brew cask install onyx
brew cask install alfred
brew cask install appcleaner
brew cask install plex-home-theater
 
brew cask install copy 
brew cask install mediafire-desktop 
brew cask install filebot 
brew cask install gas-mask 
brew cask install ifunbox 
brew cask install itools 
brew cask install imageoptim 
brew cask install integrity 
brew cask install cakebrew
brew cask alfred link
brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup



#
# Configure Git
#
echo ""
echo "GIT"
cd ~/ && curl -O https://gist.github.com/jimmynotjim/7622492/raw/5e895d1da525594c14e1052feb5c9587fb99a41c/.gitconfig
git config --global user.name "Aurélien Goulet"
git config --global user.email me@elektrorl.fr
#
# Generate SSH Keys
#
ssh-keygen -t rsa -b 4096
#Visit GitHub's official guide for instructions. https://help.github.com/articles/generating-ssh-keys/



#
# Install zsh and oh-my-zsh
#
echo ""
echo "Install zsh and oh-my-zsh"
curl -L http://install.ohmyz.sh | sh

#
# Exécution du script os x Awesome ~ Happy Hacking ~
#
echo ""
echo "Exécution du script os x Awesome ~ Happy Hacking ~"
./custom-osx-awesome.sh


#
# Exécution du script os x Awesome ~ Happy Hacking ~
#
echo ""
echo "Replace with dotfiles"
cp ./.zshrc ~/

