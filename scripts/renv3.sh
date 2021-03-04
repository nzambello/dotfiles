#!/bin/bash

rm -rdf .Python bin lib include parts
# virtualenv . -p `which python3`
/usr/local/Cellar/python@3.8/3.8.7/bin/python3 -m virtualenv .
source bin/activate
pip install -r requirements.txt
bin/buildout -Nt 5


