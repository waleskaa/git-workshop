#!/bin/bash

pushd test_dir >/dev/null
chars=`grep -sh myphrase file* | wc -c`
popd >/dev/null
echo $chars
if [[ $chars -lt 2500 ]]
then
    echo "OK"
    exit 0
fi
echo "WRONG"
exit 1
