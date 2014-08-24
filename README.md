#Getting and Cleaning Data


This repo contains result of the 'Getting and Cleaning Data' 3rd week course project.

The repo contains this file, a script, and a codebook for the file created by the script. 

##How to run the script:

* Download the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
* Unzip the data in your working directory, creating the folder 'UCI HAR Dataset' in you working directory.
* Copy the R script in this repo to your working directory
* In R, run the script by typing: source("run_analysis.R")
 

## What does this script do?

* Reads the raw data obtained from the downloaded dataset
* combines the data in one big data frame in R
* extracts the means and standard deviations from the dataframe
* creates a neat dataset with descriptive names for the measured activities and the measured variables
* writes two datasets into the unzipped 'UCI HAR Dataset'-folder: Total_Dataset.csv & averages.csv
* The file Total_Dataset.csv contains the neat dataset containing the means and standard deviations from the raw data
* the file averages.csv contains a dataset with the average of each variable in Total_Dataset.csv for each activity and each subject


