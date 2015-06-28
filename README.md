# npm-linux
A drop-in replacement to npm install on OS X using Docker


## Summary
Brings down and builds npm dependencies in the context of a Linux kernel and build environment. This is a useful if you develop on OS X, but want to use the exact same npm dependencies that will be used in production (Linux).

## Install

`docker pull imichael/linux-npm`

## Usage
You can use this in any directory that has a `package.json` file in it. Just run:

`docker run -v "$PWD:/src" -it imichael/linux-npm`

and the tool will grab all modules and build in Linux then save to your host operating system as `node_modules` in the current directory.
