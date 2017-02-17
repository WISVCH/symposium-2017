#!/bin/sh
set -e

# Install programs required for build
apk --no-cache add nodejs git curl
apk --update add tar
curl -o- -L https://yarnpkg.com/install.sh | sh
npm install -g bower

# Fetch dependencies
$HOME/.yarn/bin/yarn
bower --allow-root install

# compress images and build
$HOME/.yarn/bin/yarn run build optimize-images
$HOME/.yarn/bin/yarn run build
cp -r ./build/. /srv/www

# Uninstall installed build dependencies and remove cache
$HOME/.yarn/bin/yarn cache clean
bower --allow-root cache clean
npm cache clean
npm uninstall -g bower
apk del nodejs git curl tar

#Delete folder used for build
rm -r /tmp $HOME/.yarn
