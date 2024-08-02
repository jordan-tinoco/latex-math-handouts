#!/bin/bash

help: ## Show this help message
	@echo 'usage: make [target]'
	@echo
	@echo 'targets:'
	@egrep '^(.+)\:\ ##\ (.+)' ${MAKEFILE_LIST} | column -t -c 2 -s ':#'

clean: ## Clean all auxiliar file of pdf
	find ./out -type f ! -name "*.pdf" -delete
	find ./out -type d -empty -delete