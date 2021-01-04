#!/bin/bash

#Small command to mass rename videos in a file for referance

for file in * ; do mv "$file" `echo $file` | tr ' ' '_'; done

#will replace all Spaces w/ underscores, for all files with in a directory.
