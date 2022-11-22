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
# View new dataframe to make sure it is read correctly
View(susp_coil)