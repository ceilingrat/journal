#!/bin/bash

BASEDIR=$HOME/journal/docs
DRAFTSDIR=$BASEDIR/_drafts
POSTSDIR=$BASEDIR/_posts

NAME=$1

# touch $LOGDIR/$NAME.md

# use heredoc
# source: https://tldp.org/LDP/abs/html/here-docs.html#EX71

cat > $DRAFTSDIR/$NAME.md <<End-of-File
---
layout: post
title: '$NAME'
tags: 
categories: 
---

End-of-File

