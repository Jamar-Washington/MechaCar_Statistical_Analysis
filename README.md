# MechaCar_Statistical_Analysis

## Overview
AutosRUs' new MechaCar is having "production troubles" and is turning that analytical reviews to help provide some insight to the problem.  
The goals of this project is to:

* discover which variables predict the MPG for vehicle prototypes  
* collect summary stats on the PSI of suspension coils  
* determine if manufacturing lots are statistically different from the mean population  
* design a study to compare the MechaCar performance against vehicles from other manufacturers

### Tools used in project
**R**

## Summary
## Linear Regression to Predict MPG

![R_D1_P1](https://user-images.githubusercontent.com/109183214/203138790-2c3d8086-b90c-463b-857a-7e9be25e6119.png)
![R_D1_P2](https://user-images.githubusercontent.com/109183214/203138792-e37fff41-7fb4-4f12-b2ba-388c9cdad00d.png)


* Vehicle Length and the Ground Clearance are the most significant variables that shows a non-random effect on the MPG of the MechaCar in the dataset. Thier p-values of 2.6x10-12 and 5.21x10-8, respectively. Since the intercept also has significance statistically, there are likely other factors not included in our dataset that have a strong impact on the MPG.
* The slope of the linear model can not be considered to be zero as the p-value of 5.35x10-11. The p-value has an extreme level of insignificance, so the null hypothesis must be rejected. This means that the relationship between our variables and the miles per gallon is subject to more than random chance.
* Although there are still unconsidered factors, this model does predict the mpg of the MechaCar prototype with some relative effectiveness. The r-squared value of 0.7149, indicating that the model is 71% accurate.

## Summary Statistics on Suspension Coils
![R_D2_P1](https://user-images.githubusercontent.com/109183214/203183462-ca408b6b-9e35-451b-9eb5-a1f24d0d85ce.png)
![R_D2_P2](https://user-images.githubusercontent.com/109183214/203183464-85d7c830-e538-4f9d-9493-51d8cf3366b4.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The overall variance, as shown in the smaller data frame, is under 100 pounds per square inch. However, the variance for Lot 3 is well over the acceptable threshold, at 170.28 pounds per square inch.

## T-Tests on Suspension Coils
**Cumulative T-test** 
![R_D3_P1](https://user-images.githubusercontent.com/109183214/203221555-917903bc-92c3-45fb-b2cb-420af5c7f4a0.png)  
The image above is the results of the T-test for the suspension coils of all the manufacturing lots. The reults shows that there are no statistically differences from the population mean. With the p-value being 0.0603, we cannot reject the null hypothesis.

**Lot 1 T-test** 
![R_D3_P2](https://user-images.githubusercontent.com/109183214/203221556-150ea648-84f5-4a3a-bb54-4f99f57e2a0d.png)  
This image is the results of the T-test for the suspension coils of lot 1. Again, the reults shows that there are no statistically differences from the population mean. With the p-value being 1, we cannot reject the null hypothesis.

**Lot 2 T-test** 
![R_D3_P3](https://user-images.githubusercontent.com/109183214/203221557-5883a4f9-82a1-4bdc-92f5-6bc8167670b5.png)  
In the image showing the results of the T-test for the suspension coils of lot 2, the reults shows that there are no statistically differences from the population mean. With the p-value being 0.6072, we cannot reject the null hypothesis.

**Lot 3 T-test**
![R_D3_P4](https://user-images.githubusercontent.com/109183214/203221552-28fce221-977e-445c-bc23-88fafa43226c.png)  
A look at the results of the T-test for the suspension coils of lot 3 shows some interest as they are slightly statistically different from the population mean. 
This lot may have to be evaluted more as the p-value is 0.0417, which is low enough for us to reject the null hypothesis.

## Study Design: MechaCar vs Competition
When a consumer is looking for a new car to purchase, they are looking one or multiple reasons to purchase the vehicle. Some of those reasons could be cost, fuel efficiency, maintenance, and/or safety rating. Many consumers in today's age are looking for a vehicle that has a range of about 400 miles on a full tank/charge. This could be due to road trips in areas with longer distances from gas/charging stations or not wanting to frequently fill/charge the tank.  

Metric to test
Whatever the reason, we should evaluate MechaCar's fuel economy, in miles per gallon, in comparison to various vehicles of MechaCar's competitors.

Null and Alternate Hypothesis
**H0:** MechaCar's prototypes has an average fuel economy similar to competitor's vehicles in the same vehicle class   
**Ha:** MechaCar's prototypes has an average fuel economy that is statistically different then that of competitor vehicles

Statistical Test Used
The best statistical test for this would be two-sample t-tests

What data is needed
Fuel economy data of MechaCar prototypes, as well as from all major competitor vehicles
