#!/bin/bash

rm -rdf .Python bin lib include parts
/usr/local/bin/python2 -m virtualenv .
source bin/activate
pip install -r requirements.txt
bin/buildout -Nt 5

