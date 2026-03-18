#!/bin/bash
mkdir /usr/share/nginx/html/custom_webpage/
echo "<h1>Hello World from $(hostname -f)</h1>" > /usr/share/nginx/html/custom_webpage/index.html
