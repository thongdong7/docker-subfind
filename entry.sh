#!/usr/bin/env bash

while true; do
  echo Scan subtitles
  subfind scan-config -c /subfind.yml

  echo Sleep 1 hour...
  sleep 3600
done
