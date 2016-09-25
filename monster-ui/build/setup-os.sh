#!/bin/sh
apk update
apk add nginx git openssh-client build-base python nodejs
npm install -g npm gulp
