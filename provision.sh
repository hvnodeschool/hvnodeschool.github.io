#!/bin/sh
# provision script for Vagrant

# install ruby, and apparently node for coffeescript support in jekyll?
apt-get install -y ruby ruby-bundler nodejs

# install ruby gems we need
cd /vagrant
bundle install --system

# install an upstart script for jekyll
echo 'description "jekyll serve and watch"

start on vagrant-mounted
stop on runlevel [!2345]

chdir /vagrant
exec jekyll serve --watch
' > /etc/init/jekyll.conf

# since the vagrant-mounted event has already occurred
# before provisioning, we start it now
start jekyll
