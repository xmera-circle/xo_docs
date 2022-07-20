# Set default variables
#
#ifndef TAG
#override TAG = 3.4.1
#endif

# Assign a referenced variable
#
#REDMINE=redmine_${REDMINE_VERSION}

# Assign an output of a shell command
#
#REDMINE_MOUNT=-v $(shell pwd)/${REDMINE}:${HOME}/redmine
#USER_NAME=$(shell whoami)
#GROUP_NAME=$(shell id -g -n)

#CASE_NAME=$(shell ruby staging_case ${CASE} ${REDMINE})
#XMERA_ROOT=${SOLUTION}_${TAG}
#PWD=$(shell pwd)
#TIMESTAMP=$(shell date +"%Y-%m-%d_%H-%M-%S")
PATH_TO_FILE=$(shell npm bin)
ifneq ("$(wildcard $(PATH_TO_FILE))","")
    LOCAL=1
else
    LOCAL=0
endif

default: help

.PHONY: help 
help: #: Show help topics
	@grep "#:" Makefile* | grep -v "@grep" | sort | sed "s/\([A-Za-z_ -]*\):.*#\(.*\)/$$(tput setaf 3)\1$$(tput sgr0)\2/g"

.PHONY: html
html: #: Generate antora html output
ifeq ($(LOCAL), 1)
	${PATH_TO_FILE}/antora playbook.yml;
else
	antora playbook.yml;
endif

.PHONY: html_browser 
html_browser: #: Generate antora html output AND open index.html in browser
ifeq ($(LOCAL), 1)
	${PATH_TO_FILE}/antora playbook.yml; \
	firefox build/site/index.html;
else
	antora playbook.yml; \
	firefox build/site/index.html;
endif

.PHONY: pdf
pdf: #: Generate asciidoctor pdf document
	@cd ./pdf; \
	asciidoctor-pdf xo-doc.adoc; \
	cd ..; \
	xreader pdf/xo-doc.pdf;
