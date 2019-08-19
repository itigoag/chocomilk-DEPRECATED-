# Chocomilk

[![Build Status](https://img.shields.io/travis/itigoag/chocomilk?style=flat-square)](https://travis-ci.org/itigoag/chocomilk) [![license](https://img.shields.io/github/license/mashape/apistatus.svg?style=popout-square)](licence)

Chocomilk is an autoupdater for Chocolatey Packages. The tool is built with Ansible and runs in the common CI Piplines.

## Installation

### Local

To use chcomilk it is sufficient to use a common Linux distrubiton and copy the Makefile ui and install Ansible.

### travis-ci

How chocomilk can be used in travis-ci is [documented here](ci/travis-ci).

### gitlab-ci

How chocomilk can be used in gitlab-ci is [documented here](ci/gitlab-ci).

## Configuration

Each repository of a Chocoalatey package has a .milk file that contains the information necessary to update a package.

[documented here](.milk).

## Contributors

## Credits

- Images by [macrovector / Freepik](http://www.freepik.co)
