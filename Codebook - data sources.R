## Code book for source of data for Week 4 Coursera.

## This explains where the data was sourced from, and where the training data is from. 

## Variables
## The data were obtained from fitness data and include mean and standard error, of various types of activity including walking, running and cycling.

## Data sources 
## Data were obtained from the following area. 
library(data.table)
fileurl = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'

if (!file.exists('./UCI HAR Dataset.zip')){
        download.file(fileurl,'./UCI HAR Dataset.zip', mode = 'wb')
        unzip("UCI HAR Dataset.zip", exdir = getwd())
}

## The next part reads and merges the data and training data. I wasn't sure what to do so googled this to learn better.
## This converts the features file into a new file called 'features' with appropriate headers and footers. 

features <- read.csv('./UCI HAR Dataset/features.txt', header = FALSE, sep = ' ')
features <- as.character(features[,2])

# Then we train the data and get test data
data.train.x <- read.table('./UCI HAR Dataset/train/X_train.txt')
data.train.activity <- read.csv('./UCI HAR Dataset/train/y_train.txt', header = FALSE, sep = ' ')
data.train.subject <- read.csv('./UCI HAR Dataset/train/subject_train.txt',header = FALSE, sep = ' ')