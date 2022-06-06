#!/bin/bash

rm -rdf .Python bin lib include parts
# python3 -m virtualenv .
/opt/homebrew/Cellar/python@3.8/3.8.12_1/bin/python3 -m virtualenv .
source bin/activate
pip install -r requirements.txt
bin/buildout -Nt 5


