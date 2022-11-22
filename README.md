# MechaCar_Statistical_Analysis

### Tools used in project
R

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
