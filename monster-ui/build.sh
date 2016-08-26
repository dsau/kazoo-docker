#!/bin/sh
if [ "$1" = "" ]
then
	REPO=https://github.com/2600hz/monster-ui.git
else
	REPO=$1
fi
cp -a ~/.ssh etc/
echo Using repository $REPO
../bin/get-commit $REPO > etc/commit
echo Using repository $REPO commit: `cat etc/commit`
if [ ! -e build/setup-private.sh ]; then
	cp build/setup-private.sh.sample build/setup-private.sh
fi
docker build -t kazoo/monster-ui  --build-arg REPO=$REPO .
