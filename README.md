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
$ yarn run serve build
```
## Docker
### Build
Before you are able to use deploy the container, the container first has to be built. This is done with:
```
docker build -t symposium ./
```
The `-t` flag indicates that the container will be given the `symposium` flag when built, this is to keep track of the containers and some versioning. The `./` indicates the folder to build from.

To list all built images:
```
docker images
```

### Run
To view the container after it has finished building run:
```
docker run -p 8080:80 symposium:latest
```
The `-p 8080:80` indicates that the container has its internal port `80` exposed to port `8080` on the host machine. This means that the application is now visible on port `8080`. You can also specify older builds with replacing the `:latest` tag with another version like `:7d9495d03763`.

### Clean
Performing builds creates images that take up storage space. To clean some of this storage space, you can use these commands:
```
docker rm $(docker ps -aq)
```
This kills and removes all running and stopped containers.

```
docker rmi $(docker images -aq)
```
This removes all previously built images that are present on the machine.
