#!/bin/bash

rubies="1.9.3-p392  2.0.0-p353  2.1.0  2.1.1  2.1.5"

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
