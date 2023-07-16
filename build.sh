#!/bin/bash

SUCCESS=''
FAIL=''
function build() {
  pushd .
  cd $1
  docker build -t ft/$1 ./
  popd
}

for d in $(find . -type d | grep -vE '\.$|.*git.*' | tr -d './'); do
  build $d
  if [[ -z "$(docker image ls | grep $d)" ]]; then
    echo "Error building $d"

  fi
done

