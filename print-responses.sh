#!/usr/bin/env bash

for i in $(seq 1 20); do
  printf "%d %s\n"\
    "${i}"\
    "$(curl\
        --silent\
        --insecure\
        'https://127.0.0.1:443')"
done