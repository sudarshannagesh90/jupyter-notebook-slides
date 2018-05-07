#!/bin/bash

jupyter-nbconvert --to slides Chapter1ImageDeconvolution1.ipynb --reveal-prefix=reveal.js
mv Chapter1ImageDeconvolution1.slides.html  index.html
mkdir -p /tmp/workspace
cp -r * /tmp/workspace/
git add -A .
git commit -m "Update"
git checkout -B gh-pages
cp -r /tmp/workspace/* .
git add -A .
git commit -m "new version"
git push origin master gh-pages
git checkout master
rm -rf /tmp/workspace
