# README

## Data Source

All data being used was from [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/index.html).

### Dataset
Human Activity Recognition Using Smartphones Dataset Version 1.0

[UCI Machine Learning Repository: Human Activity Recognition Using Smartphones Data Set ](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

[The original files can be downloaded here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Files

The files included in this repository contains the following.

- `run_analysis.R`: The R script to tidy raw data and generate `finalTidy.txt`
- `CodeBook.md`: The description file of all variables in `finalTidy.txt`
- `finalTidy.txt`: The final ouput from `run_analysis.R`, which is a tidy form of original data that is convenient for next analysis. 

## Note

If you want to run the R script, please set your working directory first by `setwd()`. The script will automatically download the original zip file and unzip it for further analysis. The ouput txt file will also be saved at working directory name `finalTidy.txt`.

## Coursera Project

This repository is for Coursera course: Getting and Cleaning Data, which is a course in Data Science Specialization renders by John Hopkins University.