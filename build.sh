#!/bin/sh
set -e

# Install programs required for build
apk --no-cache add nodejs git curl
apk --update add tar
curl -o- -L https://yarnpkg.com/install.sh | sh
export PATH="$HOME/.yarn/bin:$PATH"
yarn global add bower

# Fetch dependencies
yarn
bower --allow-root install

# compress images and build
yarn run build optimize-images
yarn run build
mkdir -p /srv/www/2017
cp -r ./build/. /srv/www/2017/

# Uninstall installed build dependencies and remove cache
yarn cache clean
bower --allow-root cache clean
npm cache clean
yarn global remove bower
apk del nodejs git curl tar

#Delete folder used for build
rm -r /tmp $HOME/.yarn
