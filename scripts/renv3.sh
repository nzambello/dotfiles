#!/bin/bash

rm -rdf .Python bin lib include parts
virtualenv . -p `which python3`
source bin/activate
pip install -r requirements.txt
bin/buildout -Nt 5


