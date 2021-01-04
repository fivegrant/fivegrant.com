#!/usr/bin/make -f

generate: style template script

style: serve
	sass styles/main.sass serve/fivegrant.css

template: serve
	cp templates/main.html serve/index.html

script: serve
	cp scripts/main.js serve/fivegrant.js

serve:
	mkdir -p serve

.PHONY: run clean
run:
	npx http-server serve 
clean:
	rm -r serve
