#!/usr/bin/env bash
NAME=${1}
OUTPUT=${2}/$NAME.html

pandoc $NAME/main.md -o /tmp/content.html

cat templates/blog-head.html /tmp/content.html templates/blog-tail.html > $OUTPUT

rm /tmp/content.html


