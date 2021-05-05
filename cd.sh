#!/bin/sh
set -e
echo "CD start"
echo $(whoami)

cd /var/www/workshop/
sg deploy -c 'git fetch'
sg deploy -c 'git reset --hard origin/master'

echo "CD end"