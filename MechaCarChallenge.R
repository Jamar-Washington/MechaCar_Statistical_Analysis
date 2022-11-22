setwd("C:/Users/Jamar/OneDrive/Desktop/Class/MechaCar_Statistical_Analysis")
library(tidyverse)
library(dplyr)

## Deliverable 1
# Import and read MechaCar_mpg.csv as a data frame
mpg_df <- read.csv(file='MechaCar_mpg.csv')
# View new dataframe to make sure it is read correctly
view(mpg_df)

# Use lm() function to perform linear regression
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle +
               ground_clearance + AWD, data = mpg_df)

# Use summary() to determine the p-value and r-squared value for the linear regression model
summary(mpg_lm)

## Deliverable 2
# Import and read Suspension_Coil.csv as a data frame
susp_coil <- read.csv(file = "Suspension_Coil.csv")

# Create a total_summary dataframe using the summarize()
# function to get the mean, median, variance, and std. dev.
# of the suspension coil’s PSI column
total_summary <- susp_coil %>% summarize(
  Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

# Create a lot_summary dataframe using the group_by()
# and the summarize() functions to group each manufacturing lot
# by the mean, median, variance, and standard deviation of the 
# suspension coil’s PSI column
lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(
  Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

## Deliverable 3
# write an RScript using the t.test() function 
# to determine if the PSI across all manufacturing lots
# is statistically different from the population 
# mean of 1,500 pounds per square inch
t.test(susp_coil$PSI,mu=mean(susp_coil$PSI))
