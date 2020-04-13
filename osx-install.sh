#!/bin/bash
set -e
which python3
./osx-make-iconset.sh

python py2app_setup.py install
python py2app_setup.py py2app

INSTALL_PATH="/Applications/nbopen.app"
if [ -e $INSTALL_PATH ]; then
    rm -rf $INSTALL_PATH
fi
ln -sf "$(pwd)/dist/nbopen.app" $INSTALL_PATH

