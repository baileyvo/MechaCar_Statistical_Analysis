# Deliverable 1

# 3 load the dplyr package
library(dplyr)

# 4 import and read in the csv file as a dataframe
library(tidyverse)
mecha_mpg <- read.csv(file = './Resources/MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

# 5 perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

# 6 use the summary function to determine the p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)) 
