#!/usr/bin/env bash
NAME=${1}
pandoc $NAME.md -o /tmp/content.html

cat blog-head.html /tmp/content.html blog-tail.html > $NAME.html

rm /tmp/content.html
