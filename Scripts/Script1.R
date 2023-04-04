##load libraries

install.packages('tidyverse')
install.packages('here')

library(tidyverse)
library(here)
library(readr)


##load data
raw_data<-read.csv(here('data','Raw_Birth_Data.csv'))
head(raw_data)



##-------------------------------------------------------------DATA WRANGLING---------------------------------------------------------------

#I only want to analyse global birth rate so my next steps are to filter out unnecessary columns and locations that are not global 
