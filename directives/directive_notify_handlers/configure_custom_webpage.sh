#!/bin/bash

mkdir -p /var/www/html/firstpage /var/www/html/secondpage
touch /var/www/html/firstpage/index.html /var/www/html/secondpage/index.html
echo "Welcome to First Page from host: $(hostname -i)" >> /var/www/html/firstpage/index.html
echo "Welcome to Second Page from host: $(hostname -i)" >> /var/www/html/secondpage/index.html
