#!/bin/bash
#processALLyears

for filename in *csv
do
    echo $filename
done

for filename in *csv
do
    Rscript process.TTC.R $filename
done
