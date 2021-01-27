#!/usr/bin/env bash
NAME=${1}
pandoc $NAME/main.md -o /tmp/content.html

cat templates/blog-head.html /tmp/content.html templates/blog-tail.html > $NAME.html

rm /tmp/content.html


