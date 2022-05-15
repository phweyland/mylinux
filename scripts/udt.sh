#!/bin/sh

cd /home/philippe/git/darktable/build
sudo rm -r *

git fetch upstream
git checkout master
git rebase upstream/master

git submodule update

cmake -DCMAKE_INSTALL_PREFIX=/opt/dt ../.
sudo make install -j4
exit 0
