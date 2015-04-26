# Getting and Cleaning Data Course Project

This project consists of four files:
* README.md describing the contents of the file
* run_analysis.R contains the R script which reads and 
* CodeBook.md describes the variables, the data and the transformations used
* Means.csv which contains the final output of the script

The script assumes that it is in the same directory as 
the data direcotry UCI HAR Dataset.

The result data can be read with the command
read.table("means.txt", header = TRUE)

## The analysis script

The analysis script has comments that documents its working.
The analysis script uses the following main steps:

1. Read files
2. Merge test and train data sets
3. Keep only mean and std variables
4. Set column names
5. Clean column names
6. Merge data into one data frame
7. Convert integers variables into factors
8. Set factor level names for activities
9. Calculate the means by subject and activity
10. Write the data to a txt file
