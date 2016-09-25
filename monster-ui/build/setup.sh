#!/bin/sh

mkdir -p /usr/src && cd /usr/src 
git clone --depth 1 --no-single-branch $REPO monster-ui
cd monster-ui
npm install

cd /usr/src
for app in accounts callflows numbers pbxs voip webhooks
do
	git clone --depth 1 --no-single-branch https://github.com/2600hz/monster-ui-$app
done
