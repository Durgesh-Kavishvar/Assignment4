#!/bin/bash
#processALLyears

#test loop to find whether everything is getting printed...all the files that we are dealing with
for filename in *csv #for loop over all the csv file in the given directory
do
    echo $filename #print all the files in the directory
done

for filename in *csv
do
    Rscript process.TTC.R $filename #running R scipts for all the .csv files in the directory
done
