#!/usr/bin/env bash

echo "...updating repository ..."
pwd
git reset --hard HEAD
git clean -f
git pull

if [ $# -eq 0 ]
  then
    echo "No parameters provided"
    source run_strix.sh
else
    source run_strix.sh "$@"
fi
