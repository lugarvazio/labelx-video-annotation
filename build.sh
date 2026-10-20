#!/bin/sh
# Wraps the prototype source (../video-annotation.html, written as an artifact body) into a standalone page for GitHub Pages.
set -e
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="ru">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n</head>\n<body>\n'
  cat ../video-annotation.html
  printf '\n</body>\n</html>\n'
} > index.html
