#!/bin/sh
cd libevbuffsock
make
make install

cd ../libnsq
make
make install

cd ../kamailio
git checkout tags/4.4.3
make
make install
