#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: $0 <app|package>"
  exit 1
fi

if [ -z "$2" ]; then
  echo "What is the name of your $1?"
  read -r "$2"
fi


if [ "$1" = "app" ]; then
  flutter create --empty "./src/$2"
elif [ "$1" = "package" ]; then
  flutter create --template=package "./src/packages/$2"
else
  echo "Invalid argument. Use 'app' or 'package'."
  exit 1
fi