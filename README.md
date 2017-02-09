# Symposium

This is the code for the Symposium website. This website provides information about the annual event at W.I.S.V 'Christiaan Huygens'.

## Install the Polymer-CLI

First, make sure you have the [Polymer CLI](https://www.npmjs.com/package/polymer-cli) installed. Then run `yarn run serve` to serve your application locally.

## Installing dependencies

If you do not have bower yet, install it by running:

```
$ yarn global add bower
```

After you have done this, install all the dependencies with:

```
$ bower install
$ yarn
```

When adding dependencies later, it is advised to add them to the `bower.json` file.

## Viewing Your Application

```
$ yarn run serve
```

## Building Your Application

```
$ yarn run build
```

This will create a `build/` folder containing an unbundled builds,
both run through HTML, CSS, and JS optimizers.

You can serve the built version with:

```
$ yarn run serve-build
```
