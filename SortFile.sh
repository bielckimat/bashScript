#!/bin/bash
KATALOG="/home/anon/Desktop/SortDir/"
if [[ ! -d "$KATALOG" ]]; then
  echo "Katalog $KATALOG nie istnieje!"
  exit 1
fi
cd "$KATALOG" || exit 1
PLIK="$@"
echo "$PLIK"
for PLIK in *; do
  if [[ -f "$PLIK" ]]; then
    ROZSZERZENIE="${PLIK##*.}"
    mkdir -p "$ROZSZERZENIE"
    mv "$PLIK" "$ROZSZERZENIE/"
    echo "Przeniesiono $PLIK do $ROZSZERZENIE/"
  fi
done
