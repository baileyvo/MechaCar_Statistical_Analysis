# MechaCar_Statistical_Analysis

## Overview
The purpose of this project is to review the production data for insights that may help the manufacturing team. There are four requests:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Linear Regression to Predict MPG
The following image shows the output of the linear regression of the MechaCar_mpg data:
![Deliverable_1](https://github.com/baileyvo/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable_1.PNG)

According to this linear regression:
- **Vehicle length** and **vehicle ground clearance** are providing a non-random amount of variance to the mpg values.
- With a p-Value of 5.35e-11, the slope of the linear model is considered to be not zero, because the assumed significance level is 0.05%, which the p-value is much smaller than.
- The R-squared value is 0.7149, meaning this linear model predicts mpg of MechaCar prototypes effectively, predicting about 71%.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

This information was gathered in the following analysis:
Total Summary- looking at all manufacturing lots
![total_summary](https://github.com/baileyvo/MechaCar_Statistical_Analysis/blob/main/Images/Total_Summary.PNG)

Lot Summary- looking at each lot individually

![lot_summary](https://github.com/baileyvo/MechaCar_Statistical_Analysis/blob/main/Images/Lot_Summary.PNG)

Overall, the total variance is below 100 psi at 62.29356. When looking by lot though, Lot 1 and Lot 2 are well below the required varaince, however Lot 3 exceeds it, at 170.2861224.

