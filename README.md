# Symposium

This is the code for the Symposium website. This website provides information about the annual event at W.I.S.V 'Christiaan Huygens'.

## Install the Polymer-CLI

First, make sure you have the [Polymer CLI](https://www.npmjs.com/package/polymer-cli) installed. Then run `polymer serve` to serve your application locally.

## Installing dependencies

If you do not have bower yet, install it by running:

```
$ npm install -g bower
```

After you have done this, install all the dependencies with:

```
$ bower install
```

When adding dependencies later, it is advised to add them to the `bower.json` file.

## Viewing Your Application

```
$ polymer serve
```

## Building Your Application

```
$ polymer build
```

This will create a `build/` folder with `bundled/` and `unbundled/` sub-folders
containing a bundled (Vulcanized) and unbundled builds, both run through HTML,
CSS, and JS optimizers.

You can serve the built versions by giving `polymer serve` a folder to serve
from:

```
$ polymer serve build/bundled
```

## Running Tests

```
$ polymer test
```

Your application is already set up to be tested via [web-component-tester](https://github.com/Polymer/web-component-tester). Run `polymer test` to run your application's test suite locally.
