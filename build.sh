#!/bin/sh
set -e

# Install programs required for build
apk --no-cache add nodejs git curl
apk --update add tar
curl -o- -L https://yarnpkg.com/install.sh | sh
$HOME/.yarn/bin/yarn global add bower

# Fetch dependencies
$HOME/.yarn/bin/yarn
bower --allow-root install

# compress images and build
$HOME/.yarn/bin/yarn run build optimize-images
$HOME/.yarn/bin/yarn run build
mkdir -p /srv/www/2017
cp -r ./build/. /srv/www/2017/

# Uninstall installed build dependencies and remove cache
$HOME/.yarn/bin/yarn cache clean
bower --allow-root cache clean
npm cache clean
$HOME/.yarn/bin/yarn global remove bower
apk del nodejs git curl tar

#Delete folder used for build
rm -r /tmp $HOME/.yarn
