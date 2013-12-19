#!/usr/bin/env bash
openssl smime -encrypt -binary -aes-256-cbc -in main.py -out main.py.enc -outform DER brooklynmarathon.pem
openssl smime -decrypt -binary -in main.py.enc -inform DER -out x.py -inkey brooklynmarathon.pem 
