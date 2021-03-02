#!/usr/bin/env bash

set -e
set -x

pushd hugo
rm -rf public
hugo
cp -a public/. ../docs/
rm -rf public
popd

git add -A
git commit -m "Update site"
git push
