#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
# check "greeting" [ $(cat /usr/local/etc/greeting.txt | grep hey) ]
check "on" sudo systemctl status apache2
check "200 OK" curl -I http://www.example.org
echo AAA I\'m on fire

# Report result
reportResults