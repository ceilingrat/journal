#!/bin/bash

upm install

bundler exec jekyll s -s "docs" -H 0.0.0.0 --no-watch
