## Template for merging CatchLog and Biosampling Data
## Created by M Kapur Dec 2016 maia.kapur@noaa.gov

## set your working directory to where your raw, entered data is stored
setwd('~/LHP_DATA/cruises_raw/SE-17-07')
## load biosampling data
bios <- read.csv("SE-17-07_biosampling.csv")
## load catchlog data
cat <- read.csv("SE-17-07_catchlog.csv")

#' make a new dataframe that joins the two based on ziptie. 
#' This won't work if the column 'ziptie' doesn't appear exactly the same in both dataframes
new.df <- merge(bios, cat, by = 'ziptie')

## use this to view the first few rows
head(new.df)
## use this to view the whole thing 
View(new.df)
## this will save the file as UNION
write.csv(new.df, '/SE-17-07_union.csv', row.names = F)

## You will likely have to open this back up in excel and delete any excess columns, check for errors, etc
