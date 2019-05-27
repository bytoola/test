#! /bin/bash

cd /e/kkk

while true
do
 fc="$(ls | wc -l)"
 if [ $fc -gt 0 ];
   then
   FILES=/e/kkk/*
   for f in $FILES
   do
    /mingw64/bin/git add $f
    /mingw64/bin/git commit -m "$(date +%H-%M-%S)"
    /mingw64/bin/git remote add origin git@github.com:bytoola/test.git
    /mingw64/bin/git push -u origin master
    /mingw64/bin/git remote remove origin
   done
 fi;
 rm -rf /e/kkk/*
 sleep 3
done
