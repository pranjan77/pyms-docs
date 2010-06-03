#!/bin/bash

if [ $# == 0 ]; then
   PROJECT=pyms
else
   PROJECT=$1
fi

echo -ne "\n Removing .svn and .pyc files from $PROJECT ...\n"

find $PROJECT -name ".pyc" -exec rm  {} \;
find $PROJECT -name ".svn" -exec rm -rf {} \;

echo -ne "\n Creating tar.gz file ...\n"

tar -cf $PROJECT.tar $PROJECT/
gzip $PROJECT.tar


