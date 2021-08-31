#!/bin/bash
# define regular expression to use later with sed
RGX="s/^[0-9-]*-(.*)$/\1/"

# process input path
# - is it legit?
# - if so, strip off timestamp
INPATH=$1
INFILE=$(find $INPATH -printf "%f")
if [ ! $INFILE ]
then
  echo "error with input file"
else
  BASENAME=$( find $INPATH -printf "%f" | sed -r $RGX )
fi

# path variables
BASEDIR=$HOME/journal/docs
DRAFTSDIR=$BASEDIR/_drafts
POSTSDIR=$BASEDIR/_posts

# if BASENAME is legit, perform the move
if [ $BASENAME ]
then
  git mv $INPATH $DRAFTSDIR/$BASENAME
  git add $DRAFTSDIR/$BASENAME
fi