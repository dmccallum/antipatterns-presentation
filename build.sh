#!/bin/bash

set -e
rm -rf output
mkdir -p output/images
cp -r content/images output
find content -type d -name ".svn" -exec rm -rf {} \;
rst2s5.py --theme medium-white content/presentation.txt output/presentation.html
