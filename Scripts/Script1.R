##load libraries

install.packages('tidyverse')
install.packages('here')

library(tidyverse)
library(here)
library(readr)
library(ggplot2)


##load data
raw_data<-read.csv(here('data','Raw_Birth_Data.csv'))
head(raw_data)



##-------------------------------------------------------------DATA WRANGLING---------------------------------------------------------------

#I only want to analyse global birth rate so my next steps are to filter out unnecessary columns and locations that are not global 

#first step, have only rows with global birth rate
#next step remove irrelevent columns, keeping location_name, year_id, and val

global_data <- raw_data %>% 
  filter(location_name=="Global") %>% 
  select(location_name, year_id, val)

#rename variables for clarity
#val rename to mean birth rate, year_id rename to year



##----------------------------------------------------------PLOTS------------------------------------------------------------------------------

#plotting mean birth rate against year in order to see the trend from 1950 to 2019

p <- ggplot(data=global_data,
       mapping=aes(x=year_id, y=val))

p+geom_point()

#this is a working plot but looks a bit crap, needs axis and chart titles. want straight line and dots, every 10 years to be labeled on the x axis 

#also going to need to find how to save plots to plot folder 