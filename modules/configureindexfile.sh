#!/bin/bash
touch /var/www/html/index.html
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
