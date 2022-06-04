# xmera Omnia Documentation

Developer project of xmera Omnia application manual

![xmera Omnia manual Version](https://img.shields.io/badge/xmera_Omnia_Documentation-0.1.0-red) ![xmera Omnia Version](https://img.shields.io/badge/xmera_Omnia-v3.x-blue) ![Language Support](https://img.shields.io/badge/Languages-de-green) ![Version Stage](https://img.shields.io/badge/Stage-development-important)

The xmera Omnia manual is written in asciidoc and convertible into html by antora or converitble into a pdf file.

## Context Information

This project has the function to centralize the different antora documentation projects to one antora site. In the first it centralizes

- the xmera Omnia Guide (xo-guide) and 
- the xmera Omnia Demo Guide (xo-demo-guide)

## Installation

You need to run antora in the version 3.01 to have all used functions.

Antora requires an active long term support (LTS) release of Node.js. How to install node.js and antora is described in the [antora guick installation guide](https://docs.antora.org/antora/latest/install-and-run-quickstart/)

## Configuration

The xmera Omnia Documentation uses the antora function to implement different content sources in to one antora project. Therefore in the antora playbook the different sources have to be intergratet by defining the 3 sources

- xo-guide (xmera Omnia Documentation)  
local ressource: .
- xo-guide (xmera Omnia Documentation)  
local ressource: ../xo_guide  
git ressouce:
- xo-demo-guide: ../xo:dem_guide  
local ressource: ../xo_guide  
git ressouce:

The link between the project is implemented by the help of xref references in the menu in the sidebar

- xref:_version_@_antora-project-name_:_module-name_:_site-file-name_[_linkname_]

A sample is:

- xref:1.0@xo-demo-guide:einfuehrung:index.adoc[Einführung]

## Use of partials

To make the work less complex to build the central menu (nav.adoc) in the modules folder, it it is possible to implement the menu part of each module and implement this site menus by references to the central nav.adoc.

Therefore the nav.adoc of every modul has to be placed in a partials folder in the module folder. Wis the partial function of antora it is now possible to implement the site menus into the central menu.

- xref:_module-name_:partial$_partial-file-name_[]

A sample is:

include::admin:partial$nav.adoc[]

## Changelog

All notable changes to this plugin will be reported in the [changelog](https://circle.xmera.de/projects/xmera-omnia-documentation/repository/xo_docs/revisions/develop/entry//CHANGELOG.md).

## License

...
