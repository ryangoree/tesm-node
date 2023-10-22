#!/bin/bash

POSITIONAL=""
OPTIONS=""
skipNext=false

for i in "$@"; do
  if [ "$skipNext" = true ]; then
    skipNext=false
    shift
    continue
  fi

  case $i in
    -*=*|--*=*)
      OPTIONS+="${i%%=*} ${i#*=} "
      ;;
    -*|--*)
      OPTIONS+="$i $2 "
      skipNext=true
      ;;
    *)
      POSITIONAL+="$i "
      ;;
  esac
  shift
done

node --loader tesm-node $POSITIONAL $OPTIONS
