# MechaCar_Statistical_Analysis

The latest prototype from AutosRUs, the MechaCar, is facing production challenges that are hindering the progress of the manufacturing team. The objective of this analysis is to examine the production data to uncover insights that could assist the manufacturing team in overcoming these obstacles.

## Linear Regression to Predict MPG
From the output, some variables that provided a non-random amount of variance to the mpg values in the dataset are `vehicle_length` and `ground_clearance`.

The slope of the linear model is not considered to be zero, as some of the independent variables have significant p-values.

This linear model can predict the mpg of MechaCar prototypes effectively, as the r-squared value is relatively high, suggesting that the model accounts for a significant portion of the variance in the dependent variable (mpg).

![linear Regression](Resources/Linear_regression_MPG.png)

## Suspension Coils Summary Statistics

![summary table](Resources/Summary_stat_suspension.png)

While the overall manufacturing data adheres to the design specifications, individual lots display discrepancies. Specifically, Lot 3's variance surpasses the 100 PSI limit, reaching over 170 PSI.

![Summary table lots](Resources/Summary_stat_suspension_lots.png)

## T-Tests on Suspension Coils

Based on the findings from the previous analysis, t-tests were conducted on a sample of the entire population of vehicles and on a sample from each lot, comparing them to the mean of the entire population.


### T-Test for All Car Lots

![T-Test All](Resources/t_test_all.png)

The findings above suggest that a random sample from all lots is marginally below the population average of 1500 PSI.

The data was then organized into subgroups for each lot to compare against the population mean.

### T-Tests for Individual Lots

#### T-Test for Lot 1

![T-Test lot 1](Resources/t_test_lot1.png)

The p-value for this lot is extremely small, which implies that we possess sufficient evidence to reject the null hypothesis. Consequently, the two means are not statistically similar.

#### T-Test for Lot 2

![T-Test lot 2](Resources/t_test_lot2.png)

The p-value for this T-Test is also very small, once again indicating that we have enough evidence to reject the null hypothesis. The mean of the lot and the mean of the entire population are not statistically similar.

#### T-Test for Lot 3

![T-Test lot 3](Resources/t_test_lot3.png)

The p-value for this test is quite large, which means that we don't have enough evidence to reject the null hypothesis. The mean of Lot 3 and the mean of the population are similar. Given that previous tests have shown issues with the variance of PSI in Lot 3, we know that this production facility is significantly influencing the population mean. Therefore, efforts should be concentrated on addressing the issues faced in Lot 3 during the production of the MechaCar.

