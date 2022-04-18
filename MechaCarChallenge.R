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


# Deliverable 2

# 2 read in the suspension_coil file as a table
suspension_coil <- read.csv(file='./Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

# 3 create a total summary df using the summarize function to get the mean, median, variance, and standard deviation of the PSI column
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI),
                                          Variance=var(PSI),
                                          SD=sd(PSI), .groups = 'keep')

# 4 create a lot summary df using the group by and the summarize functions to group each manufacturing lot by mean, median, variance, and sd of the PSI column
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                             Median=median(PSI),
                                                                             Variance=var(PSI),
                                                                             SD=sd(PSI),.groups = 'keep')

# Deliverable 3

# 1 write an Rscript using the t.test function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1500 PSI
t.test(suspension_coil$PSI,mu=1500)

# 2 write three more RSripts using the ttest fuction and its subset arguement to determine if the PSI for each manufacturing lot is statistically different
lot1 <- subset(suspension_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
