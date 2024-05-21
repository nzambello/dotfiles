#!/bin/bash

bunx autocannon --warmup [ -c 1 -d 3 ] -d 30 -c 1000 -w 16 $1
