#!/bin/bash

for i in "$@"; do
  case $i in
    -*=*|--*=*)
      OPTIONS+="${i#*=}"
      shift # past argument=value
      ;;
    -*|--*)
      OPTIONS+="$1 $2"
      shift # past argument
      shift # past value
      ;;
    *)
      POSITIONAL+="$1 " # save positional arg
      shift # past argument
      ;;
  esac
done

node --loader tesm-node $OPTIONS $POSITIONAL