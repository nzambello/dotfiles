#!/bin/bash
sudo nmap -v -sS -O $(arp -la | tail -$(($(arp -la | wc -l) - 1)) | awk '{print $1}')
