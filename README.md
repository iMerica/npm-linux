# npm-linux
A drop-in replacement to npm install on OS X using Docker

[![](https://badge.imagelayers.io/imichael/npm-linux:latest.svg)](https://imagelayers.io/?images=imichael/npm-linux:latest 'Get your own badge on imagelayers.io')

## Summary
Brings down and builds npm dependencies in the context of a Linux kernel and build environment. This is a useful if you develop on OS X, but want to use the exact same npm dependencies that will be used in production (Linux).

## Install

`docker pull imichael/linux-npm`

## Usage
You can use this in any directory that has a `package.json` file in it. Just run:

`docker run -it -v "$PWD:/src" -it imichael/linux-npm`

If you have npm modules in private git repos, you can also do:

`docker run -it -v "$PWD:/src" -v "$HOME/.ssh/id_rsa:/root/.ssh/id_rsa" imichael/linux-npm`

The above command mounts your ssh key into the container while it's being ran so that npm can use it. Both commands will grab all 
modules and build in Linux then save to your host operating system as `node_modules` in the current directory.

## Code
All code for this container is [here](https://github.com/iMerica/npm-linux). 
