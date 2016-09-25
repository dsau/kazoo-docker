#!/bin/sh

cd /usr/src/monster-ui
git pull
npm install
gulp build-prod
rm -rf /usr/share/nginx/html; cp -r ./dist /usr/share/nginx/html

for app in accounts callflows numbers pbxs voip webhooks
do
	cd /usr/src/monster-ui-$app
	git pull
	cp -r ./ /usr/share/nginx/html/apps/$app
done
