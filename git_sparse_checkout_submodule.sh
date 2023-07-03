#!/bin/sh

git submodule add "Git URL" <path to submodule desired output>
cd .git/modules/<Path choosen above>
#Double check the URL of the submodule:
git config --get remote.origin.url
echo "docs/devel" >> .git/info/sparse-checkout
cd <Path to your repo>
#delete the submodule folder
git submodule update
git submodule sync
