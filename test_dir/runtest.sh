#!/bin/bash

chars=`grep -sh myphrase file* | wc -m`
if [ $chars -lt 1000 ]
then
    exit 0
fi
exit 1
