#!/bin/bash

for filename in *.sql
do
  dbname=${filename%.sql}
#  echo $dbname
my_array=($(echo $dbname | tr "." "\n"))
for i in "${my_array[1]}"
do
    echo $i
    mv $dbname.sql $i.sql
done

