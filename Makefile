#!/usr/bin/make -f

generate: style template script assets

style: serve
	sass styles/home.sass serve/home.css

template: serve
	cp templates/*.html serve/

script: serve
	cp scripts/*.js serve/

assets: serve
	cp assets/fonts/Work-Sans/fonts/static/WOFF2/WorkSans-Medium.woff2 serve/Work-Sans-Medium.woff2
	cp assets/fonts/Work-Sans/fonts/static/WOFF2/WorkSans-Bold.woff2 serve/Work-Sans-Bold.woff2
	cp assets/fonts/Work-Sans/fonts/static/WOFF2/WorkSans-Italic.woff2 serve/Work-Sans-Italic.woff2
	cp assets/fonts/Work-Sans/fonts/static/WOFF2/WorkSans-BoldItalic.woff2 serve/Work-Sans-Italic.woff2

serve:
	mkdir -p serve

.PHONY: run clean
run:
	npx http-server serve 
clean:
	rm -r serve
	rm -r .*cache*
refresh: clean generate
