#!/bin/bash

rubies="2.4.6 2.5.5 2.6.3"

echo
echo "checking ruby..."
echo

for v in $rubies; do
  if `rbenv versions | grep $v > /dev/null`; then
    echo "ruby $v installed"
  else
    echo "installing ruby $v..."
    rbenv install $v
    echo
  fi
done
