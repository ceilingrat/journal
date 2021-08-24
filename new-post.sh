#!/bin/bash

TODAY=$(TZ="/usr/share/zoneinfo/Japan" date "+%Y-%m-%d")

LOGDIR=$HOME/journal/docs/_posts

COUNT=$(find $LOGDIR -iname "*$TODAY*" | wc -l)

NAMEPRE=$(printf "$TODAY-%02d-" $COUNT)

NAME=${NAMEPRE}$1

# touch $LOGDIR/$NAME.md

# use heredoc
# source: https://tldp.org/LDP/abs/html/here-docs.html#EX71

cat > $LOGDIR/$NAME.md <<End-of-File
---
layout: post
title: $NAME
tags: 
categories: 
---

End-of-File

