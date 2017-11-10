#!bin/bash

pip install Sphinx > /dev/null

sphinx-build -b html . ../build

make html

xdg-open ../build/index.html > /dev/null

sleep 2 

kill -KILL -$$ > /dev/null


