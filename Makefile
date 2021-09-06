#!/usr/bin/make -f

generate: style layouts script posts assets

style: serve
	sass styles/primary.sass serve/primary.css -I .
	sass styles/blog.sass serve/blog.css -I .

layouts: serve
	cp layouts/*.html serve/

script: serve
	echo "No Javascript in Use!"

posts: serve
	cp posts/published/* serve/posts/

assets: serve
	cp assets/fonts/Work-Sans/fonts/static/WOFF2/WorkSans-Medium.woff2 serve/Work-Sans-Medium.woff2
	cp assets/fonts/Work-Sans/fonts/static/WOFF2/WorkSans-Bold.woff2 serve/Work-Sans-Bold.woff2
	cp assets/fonts/Work-Sans/fonts/static/WOFF2/WorkSans-Italic.woff2 serve/Work-Sans-Italic.woff2
	cp assets/fonts/Work-Sans/fonts/static/WOFF2/WorkSans-BoldItalic.woff2 serve/Work-Sans-Italic.woff2
	cp assets/images/favicon.jpeg serve/favicon.jpeg
	cp assets/icons/* serve/icons/

serve:
	mkdir -p serve
	mkdir -p serve/posts
	mkdir -p serve/icons

.PHONY: run clean
run:
	npx http-server serve 
clean:
	rm -r serve
	rm -r .*cache*
refresh: clean generate
