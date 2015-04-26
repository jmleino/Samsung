# Getting and Cleaning Data Course Project

This project consists of three files:
* README.md describing the contents of the files and how the script works
* run_analysis.R contains the R script which reads, modifies and writes the data
* CodeBook.md describes the variables, the data and the transformations used

The script assumes that it is in the same directory as 
the data directory "UCI HAR Dataset".

The result data can be read with the command
read.table("means.txt", header = TRUE)

## The analysis script

Only the main steps of the analysis are explained here.
The actual analysis script has comments that explain its working in more detail.
The analysis script uses the following main steps:

1. Read files
2. Merge test and train data sets
3. Keep only mean and std variables
4. Set column names
5. Clean column names
6. Merge data into one data frame
7. Convert integer variables into factors
8. Set factor level names for activities
9. Calculate the means by subject and activity
10. Write the data to a txt file
