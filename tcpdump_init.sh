#!/bin/bash

kubectl sniff -n emojivoto $(kubectl -n emojivoto get po -o name | grep web | cut -d'/' -f2) -c web-svc -o - | wireshark -i -