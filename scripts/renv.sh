#!/bin/bash

rm -rdf .Python bin lib include parts
virtualenv .
source bin/activate
pip install -r requirements.txt
bin/buildout -Nt 5

