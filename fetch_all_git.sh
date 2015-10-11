#!/bin/bash
# Fetch specified Git repositories

repos="/home/aleks/pr/home/examples
/home/aleks/pr/home/outwiker
/home/aleks/pr/trs/express"

echo "Total repositories: "
for repo in $repos
do
  echo $repo
  cd $repo
  fetch=`git fetch`
  if [ -n "$fetch" ]
  then
      echo $fetch
  else
    echo "not changed"
  fi
  echo
done
