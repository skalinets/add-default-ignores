## Introduction
This module allows to add `.gitignore`, `.gitattributes` or `.hgignore` with .NET default patterns to current folder just after the new repository is created. Templates are taken from github (`Content` folder of this project).
## Installation
### PSGet
1. Install [psget](http://psget.net/)
2. Run `Install-Module default-ignores`
### Manual
Download [AddDefaultIgnoreFiles.psm1](https://github.com/skalinets/add-default-ignores/edit/master/AddDefaultIgnoreFiles.psm1) and run `Import-Module AddDefaultIgnoreFiles.psm1`

## Usage

`cd YOUR_PROJECT_ROOT`

`Add-GitIgnore` adds .gitignore

`Add-HgIgnore` adds .hgignore

`Add-GitAttr` adds .gitattributes

## How to contribute
Templates are located in `Content` folder. Just fork, modify and send me a pull request.
