#!/bin/bash


find . -iname '*.pdf' | while read -r f 
do
  if ! pdfinfo "$f" &> /dev/null; then
    echo "$f" is broken
  fi
done