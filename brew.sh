# 判断是否为MacOS，是则安装homebrew
# 低版本需要安装Command Line Tools，https://developer.apple.com/downloads/index.action https://developer.apple.com/download/more/
# 或者执行 
# xcode-select -p
# xcode-select --install
if test "$(uname)" = "Darwin" ; then
  # MacOS
  if which brew >/dev/null 2>&1 ; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
else
  # Linux
  echo "homebrew The missing package manager for macOS"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# 常用的命令行工具安装
brew install vim --with-override-system-vi
brew install tree
brew install go
brew install jmeter
brew install mitmproxy
brew install proxychains-ng

#常用的工具包安装
brew cask install java
brew cask install iterm2
brew cask install google-chrome
brew cask install shadowsocksx-ng
brew cask install postman
brew cask install sequel-pro
brew cask install xmind-zen
brew cask install wechat
brew cask install slack
brew cask install manico
brew cask install spectacle
brew cask install cheatsheet
brew cask install alfred
brew cask install visual-studio-code
brew cask install kindle
brew cask install joplin
brew cask install zeplin
# iTools 使用需要设置系统语言中包含有英语
brew cask install itools

# Remove outdated versions from the cellar.
brew cleanup
