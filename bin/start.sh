#!/bin/bash
#
# Dev environment setup
#

# Ask for sudo password
echo 'Checking credentials...'
sudo echo 'ok!'

# Install homebrew
if ! command -v brew >/dev/null 2>&1; then
    ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
fi
brew update
brew upgrade

# Install GNU core utilities
brew install git grc coreutils


# Remove outdated versions from the cellar
brew cleanup

#
# Ruby
#

# Install/update RVM
if ! command -v rvm >/dev/null 2>&1; then
    \curl -L https://get.rvm.io | bash -s stable
else
    rvm get stable
fi

# Install Ruby via RVM
rvm install 1.9.3
rvm install 2.0.0
rvm use --default 2.0.0

#Ruby done, go for chef!
gem install chef --no-ri --no-rdoc

#CHEF GO!
if [[ $1 ]]; then RUNLIST="-o $1"; fi
chef-solo -j node.json -c solo.rb $RUNLIST