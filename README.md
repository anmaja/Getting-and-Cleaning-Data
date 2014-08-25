#Getting and Cleaning Data


This repo contains the result of the 'Getting and Cleaning Data' 3rd week course project.

The repo contains this ReadMe file, a R-script to create an overview of the raw data, a codebook for the summary file created by the script, plus the created summary file 'averages.txt' itself.

##How to run the script:

* Download the raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Unzip the data in your working directory, creating the folder 'UCI HAR Dataset' in your working directory
* Copy the R script in this repo to your working directory
* In R, run the script by typing: source("run_analysis.R")

Note: this script requires the R package 'reshape2'. If you do not have this package, please download and install this package before running the script.

## What does this script do?

* Reads the raw data obtained from the downloaded dataset
* Combines the data in one big data frame in R
* Extracts the means and standard deviations from the dataframe
* Creates a neat dataset with descriptive names for the measured activities and the measured variables
* Writes two datasets into the unzipped 'UCI HAR Dataset'-folder: Total_Dataset.txt & averages.txt
* The file Total_Dataset.txt contains the neat dataset containing the means and standard deviations from the raw data
* The file averages.txt contains a dataset with the average of each variable in Total_Dataset.txt for each activity and each subject


