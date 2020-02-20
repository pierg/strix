#!/usr/bin/env bash

echo "...updating repository ..."
pwd
git reset --hard HEAD
git clean -f
git pull

if [ $# -eq 0 ]
  then
    echo "No parameters provided, running bash"
    bash
else
    source run_strix.sh "$@"
fi
