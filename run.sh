#!/bin/bash

# upm install -F

bundler exec jekyll s \
--source "docs" \
--baseurl "" \
--host 0.0.0.0 \
--no-watch \
--drafts
