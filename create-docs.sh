#!bin/bash

echo "Docs name:"

read name

echo "Author:"

read author

pip install Sphinx > /dev/null

mkdir "$name"
cd "$name"

sphinx-quickstart -q --sep -p "$name" -v 0 -a "$author"

cp ../source/view-docs.sh .

sh view-docs.sh

vim source/index.rst
