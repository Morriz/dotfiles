brew install gpg2

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm install 2.6.5
rvm --default use 2.6.5

rvm pkg install openssl

gem install bundler
#gem install consular
#gem install consular-osx
gem install json
gem install lunchy
#gem install pygmentize
