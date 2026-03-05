#!/usr/bin/env bash
PATH=~/bin:$PATH
id=$1
xelatex -interaction=nonstopmode $id
lexit=$?
if $lexit -eq 1; then
  exit 1
else; if $lexit -ne 0; then
  exit 2
fi
magick -density 600 $id.pdf -resize 512x512 -background "#ffffff" -alpha remove $id.png
if $? -ne 1; then
  exit 2
fi
exit 0