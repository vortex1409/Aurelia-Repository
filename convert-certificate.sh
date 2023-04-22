#!/bin/bash

# Prompt user for PFX filename
echo "Please enter the filename of your PFX file (including the .pfx extension):"
read pfx_file

# Convert PFX to CRT
openssl pkcs12 -in "$pfx_file" -clcerts -nokeys -out certificate.crt

# Extract private key from PFX
openssl pkcs12 -in "$pfx_file" -nocerts -out private.key

# Remove password from private key
openssl rsa -in private.key -out key-without-password.key

echo "Conversion complete. The certificate file is certificate.crt and the key file (without password) is key-without-password.key."
