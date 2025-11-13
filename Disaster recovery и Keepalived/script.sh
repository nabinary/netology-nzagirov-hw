#!/bin/bash

CODE=$(curl -s -o /dev/null -w "%{http_code}\n" http://127.0.0.1)

[ -f "/var/www/html/index.nginx-debian.html" ] && [ $CODE == 200 ] || { exit 1; }
