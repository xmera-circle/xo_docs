# xmera Omnia Documentation

Developer project of xmera Omnia Documentation

![xmera Omnia Documentation Version](https://img.shields.io/badge/xmera_Omnia_Documentation-0.5.0-red) ![xmera Omnia Version](https://img.shields.io/badge/xmera_Omnia-v3.x.x-blue) ![Language Support](https://img.shields.io/badge/Languages-de-green) ![Version Stage](https://img.shields.io/badge/Stage-release-important)

The xmera Omnia Documentation is written in AsciiDoc and convertible into HTML by Antora or converitble into a pdf file.

---

## Installation

The documentation is based on AsciiDoc. The adoc-files are converted to a HTML documentation by Antora and to a PDF document by Asciidoctor PDF.

So you need to install:

- [Antora](https://docs.antora.org/antora/latest/install/install-antora/) and
- [Antora Lunr Extension](https://docs.antora.org/antora/latest/extend/supported-components/#component-matrix)
- [Asciidoctor PDF](https://asciidoctor.org/docs/asciidoctor-pdf/#install-the-published-gem)

For doing so, make sure you run the latest Node.js LTS version:

    node --version
    v18.12.1

Follow the [instructions for Linux](https://docs.antora.org/antora/latest/install/linux-requirements/#upgrade-node) in order to upgrade to the latest LTS version of node.

Install all dependencies of this project by

    npm install

## Create xmera Omnia Documentation via Makefile

The following commands will build the documentation with all its components.

That is, you need also [xo_demo_guide](https://github.com/xmera-circle/xo_demo_guide) and [xo_guide](https://github.com/xmera-circle/xo_guide)!

Create the Antora HTML pages and start the guide with Firefox:

    make html_browser

Create the pages without starting the browser:

    make html

Create the pdf document and start the document in the document reader:

    make pdf

**NOTE** The PDF Creator is not working right now!

## Changelog

All notable changes to this project will be reported in the [changelog](https://circle.xmera.de/projects/xmera-omnia-guide/repository/xo_guide/revisions/develop/entry//CHANGELOG.md).

## License

xmera Omnia Documentation © 2022 by [xmera Solutions GmbH](https://xmera.de) is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.en).
