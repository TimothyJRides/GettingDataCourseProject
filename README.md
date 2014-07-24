---
title: "Readme.md"
author: "TimothyJ"
date: "July 24, 2014"
output: html_document
---

### This is the Readme file for the Coursera class Getting and Tidying Data course project.

#### About the Dataset

For this we used the Human Activity Recognition Using Smartphones Dataset.

The raw dataset and descriptive files are available [at this link][01].

A description is also available at the UCI Machine Learning Depository [at this link][02].

Downloaded is a zipped file title "UCI HAR Dataset". It includes 4 descriptive text files- activity_labels, features, features_info, and README. It contains 2 files, test and train. Each of these files contains 3 text files- subject_test, X_test, and y_test (or train instead of test). The X_test/train files contained summarized data of the the normailzed measurements. The subject_train file lists the subject and the y_train the movements summarized. Also included in each of these files is the file Inertial Signals, which are the raw measurements we did not use, but were summarized for the X_test/train files.

We used these files to develope the tidy data set, which contains averages of the mean and standard deviations of the normalized[-1,1] data, for each subject and activity. Other variables of the normalized data were discarded.

#### About the Script - run_analysis.R

The script requires the use of the plyr and reshape2 packages. Please make sure these are installed on your machine.

This script will combine the descriptive and summarized files of the train and test datasets into one large dataset, and then form that into a tidy dataset of the averages of all the measurements broken down by subject and motion.

#### Script Actions

The script loads the plyr and reshape2 packages. It then loads the 6 main data sets- X_train, y_train, subject_train, X_test, y_test, and subject_test.

The train and test sets are made into single datasets using cbind, and then rbind is used to combine the train and test datasets into one larger dataset.

The features.txt file is cleaned up and used to populate the column names of the dataset, along with subject and activity measured.

Since we only want the mean and standard deviation data, cbind is used to select only those variable columns.

The join function is used to put character strings in the activity columns, making those more easily recognized.

The ddply function is used to take the averages of all the mean and standard deviation data for each subject and activity.

Finally we use the melt function to form a tidy dataset with four columns- subject, activity, motion, and average.

#### Output

The script will leave one tidy dataset in a file titled average_data. It has four columns- subject, activity, motion, and average. Subject, activity, and motion are character strings, and average is numeric. This dataset meets the tidy data model as described by Hadley Wickham in [video][03] and [writing][04].



[01]:https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

[02]:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

[03]:http://vimeo.com/33727555

[04]:this paper