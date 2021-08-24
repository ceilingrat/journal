#!/bin/bash

upm install

bundler exec jekyll s \
--source "docs" \
--baseurl "" \
--host 0.0.0.0 \
#--no-watch
