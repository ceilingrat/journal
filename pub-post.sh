#!/bin/bash

INPATH=$1
INFILE=$(find $INPATH -printf "%f")
if [ ! $INFILE ]
then
  echo "error with input file"
else

  TODAY=$(TZ="/usr/share/zoneinfo/Japan" date "+%Y-%m-%d")

  BASEDIR=$HOME/journal/docs
  DRAFTSDIR=$BASEDIR/_drafts
  POSTSDIR=$BASEDIR/_posts

  COUNT=$(find $POSTSDIR -iname "*$TODAY*" | wc -l)

  NAMEPRE=$(printf "$TODAY-%02d-" $COUNT)

  NAME=${NAMEPRE}$INFILE

  git mv $INPATH $POSTSDIR/$NAME
  git add $POSTSDIR/$NAME

fi