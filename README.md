# Mecha Car Statistical Analysis

## Overview of Analysis

In this analysis, we are working with Jeremy, a data analyst at AutosRUs. Jeremy has been assigned to a special project involving AutoRUs' newest
prototype, MechaCar. MechaCar is currently suffering from production troubles and Jeremy has been tasked with reviewing the production data
to gain insights that can help the production team. 

### Purpose

The purpose of this project is to provide statistical analysis of the production data for MechaCar. From the analysis, we will render insights that
will help MechaCar's production team. 

## Linear Regression to Predict MPG

In the first part of the statistical analysis, we performed a linear regresssion on the test results for 50 prototype MechaCars. The data includes
multiple design specifications for each prototype. From the regression, we will calculate the coefficients for each design specification, which
in turn will help us determine which design specifications are significant to the MPG. 

![This is an image](https://github.com/jstawarz/MechaCar_Statistical_Analysis/blob/main/resources/dev1_linear_reg.png)

Question 1: From the linear regression, we can determine that the variables that provided non-random amount of variance to the MPG values are 
vehicle length and ground clearance, as Pr(>|t|) vlaues are the smallest of the group. This indicates that they have a high level of significance
on the MPG.

Question 2: The slope of the linear model is not zero. We know that the slope of the model is not zero because the variables (length, weight, etc.)
have a significant impact on the MPG. If none of the variables affected the MPG, then the slope would be considered zero.

Question 3: The linear model effectively predicts the MPG of the MechaCar prototypes. We know this because the R-squared value is equal to .7149.
What this means is that the model effectively predicts the MPG 71.49% of the time. 


## Summary Statistics on Suspension Coils

Here, we generated the statistical summary for the MechaCar's suspension coils. Per the design specifications, the variance of the coils should not
exceed 100lbs per square inch. 

With this in mind, we first took the summary of the suspension coil data as a whole. With a variance of 62.29356, the manufacturing of the suspension 
coils as a whole, are within the mandated variance limit of 100lbs per square inch. 

![This is an image](https://github.com/jstawarz/MechaCar_Statistical_Analysis/blob/main/resources/dev2_summary.png)

However, when we look at the breakdown of the suspension coils by lot, we can see that not all the lots are in compliance with the variance mandate.
Below, we can see that while Lot 1 and 2 are in compliance with variance's of .9795918, and 7.4693878 respectively, Lot 3 is not. With a variance of
170.2861224, the coils in Lot 3 are not compliant with the design specifications.

![This is an image](https://github.com/jstawarz/MechaCar_Statistical_Analysis/blob/main/resources/dev2_lot_summary.png)

## T-Tests on Suspension Coils

Continuing our evaluation of the suspension coils, we performed a series of t-tests to determine if a statistical difference exists between the
means of our dataset and the presumed population mean of 1,500 pounds per square inch.

First, the t-test results for all manufacturing lots. If we assume the common .05 signficance level, then with a p-value of .06028, we would 
fail to reject that there is a statistical difference between the calculated mean and the presumed population mean. In other words, the means are
statistically similar.

![This is an image](https://github.com/jstawarz/MechaCar_Statistical_Analysis/blob/main/resources/all_lots.png)

The same is true for lots 1 and 2, with p-values of 1 and .6072, we would determine that the means for these lots are statistically similar to the
presumed population mean. 

Lot 1

![This is an image](https://github.com/jstawarz/MechaCar_Statistical_Analysis/blob/main/resources/lot1.png)

Lot 2

![This is an image](https://github.com/jstawarz/MechaCar_Statistical_Analysis/blob/main/resources/lot2.png)

However, for Lot 3, with a p-value of .04168 that falls below the .05 significance level, we would determine that there is a statistical difference
between the mean of this lot and the presumed population mean. We would interpret this result to mean that the suspension coils in Lot 3 are somehow
deficient as the mean pounds per square inch is differing from the norm. 

Lot 3

![This is an image](https://github.com/jstawarz/MechaCar_Statistical_Analysis/blob/main/resources/lot3.png)


## Study Design: MechaCar vs. Competition

Lastly, we will describe a potential statistical study that compares MechaCar to a competitor. For this study, we will be testing maintenance cost. 

For the purposes of this test, the null hypothesis will be that the means all cars cost the same to maintain. The alternative hypothesis is that the 
mean maintenance costs of all cars are not the same. 

To test this, we could utilize a one-way ANOVA test to test the maintenance costs (dependent variable) of different cars (independent variable). We
would use this test because it is a straightforward way to test the means across multiple groups, as there are likely many competitors to MechaCar.

For this analysis, we would need maintenance cost data for MechaCar, as well as the maintenance cost data for any competing car.


