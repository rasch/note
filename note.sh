#!/bin/sh

NOTES_DIR=${NOTES_DIR:-/data/note}
NOTES_PATH="$NOTES_DIR"/"$(date +%Y-%m)".txt

mkdir -p "$NOTES_DIR"

if test $# -eq 0; then
  if test -p /dev/stdin; then
    (cat; printf "\n\n") >> "$NOTES_PATH"
  else
    "$EDITOR" "$NOTES_PATH"
  fi
else
  printf "%s\n\n" "$*" >> "$NOTES_PATH"
fi
