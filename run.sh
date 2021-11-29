#!/bin/bash

if ! bundler check
then
  upm install -F
fi

bundler exec jekyll s \
--source "docs" \
--baseurl "" \
--host 0.0.0.0 \
--drafts
# --no-watch \
# --drafts
