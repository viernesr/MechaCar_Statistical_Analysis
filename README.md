# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

The resulting statistical summary leads to the image below:

![alt text](https://github.com/viernesr/MechaCar_Statistical_Analysis/blob/main/Resources/images/linear_regression_summary.PNG?raw=true)


The linear regression slope is: mpg = 6.267×vehicle_length + 0.0012×vehicle_weight + 0.0688×spoiler_angle + 3.546×ground_clearance + (-3.411)×AWD -104.0

Some points of interest from the statistical summary:
* The significant variables are vehicle_length and ground_clearance, as their respective p-values are less than 0.05. They are statistically likely to provide a non-random amount of variance to the mpg values in the dataset. In other words, vehicle length and vehicle ground clearance will have a significant impact on miles per gallon on the MechaCar prototype. Conversely, as their respective p-values are greater than 0.05, the vehicle weight, spoiler angle, and All Wheel Drive (AWD) are not statistically significant to the model, therefore likely providing a random amount of variance to the mpg values in the dataset.
* The p-value of the model is 5.35e-11, which is much smaller than the assumed significance level of 0.05. Therefore, based on the model, it is sufficient to reject the null hypothesis. We can conclude that the slope of the model is not zero.
* To check if the model can predict the mpg value effectively, we look at the R-squared value from the summary. As the value is 0.7149, which means roughly 71.5% of all mpg predictions can be determined from this model, relatively speaking, we can say this linear model can predict the mpg value effectively.
* As we see there are three statistically insignificant variables in the model, we can make a new linear model, removing those variables, so that only statistically significant variables are included. From the image below, the R-squared value, decreased from 0.7149 to 0.674, which is not drastic. This linear model could also be used to predict mpg values. Below the image gives the slope for the model, to which the coefficients and the intercept are not that different compared to the original slope.

![alt text](https://github.com/viernesr/MechaCar_Statistical_Analysis/blob/main/Resources/images/linear_regression_significant_summary.PNG?raw=true)

The linear regression slope for this model is: mpg = 6.081×vehicle_length + 3.567×ground_clearance - 91.557

## Summary Statistics on Suspension Coils

The Suspension Coil dataset provided for the MechaCar contains the results of the weight capacities of multiple suspension coils from multiple production lots. This is to test and determine for consistency.

Looking at all manufacturing lots:

![alt text](https://github.com/viernesr/MechaCar_Statistical_Analysis/blob/main/Resources/images/total_summary.PNG?raw=true)

Looking at each manufacturing lot:

![alt text](https://github.com/viernesr/MechaCar_Statistical_Analysis/blob/main/Resources/images/lot_summary.PNG?raw=true)

Based on the entire dataset, we see the variance of the PSI is 62.29, which meets the 100 PSI variance limit. Similarly, looking at Lots 1 and 2, they also meet the 100 PSI variance requirement, with significantly lower values of 0.98 and 7.47, respectively. However, Lot 3 has a much higher variance, exceeding the 100 PSI variance limit, with a value of 170.29, concluding that this lot does not meet the design specification.

To show a visualizaion of the summaries of each lot, a boxplot was created, shown below:

![alt text](https://github.com/viernesr/MechaCar_Statistical_Analysis/blob/main/Resources/images/boxplot_lot.PNG?raw=true)

## T-Tests on Suspension Coils

A t-test is performed on all lots and then each lot separately. This is to determine if there is a statistical difference between the mean of the provided sample dataset and a hypothesized dataset. Using the presumed mean 1500, here are the following results:

The summary of the t-test results across all manufacturing lots:

![alt text](https://github.com/viernesr/MechaCar_Statistical_Analysis/blob/main/Resources/images/t-test_total.PNG?raw=true)

The mean of the sample is 1498.78, which is the same value from the summary statistsics. However, the p-value is 0.06, which is higher than the assumed significance level, 0.05. This means that the null hypothesis can not be rejected, from the evidence above. It can be concluded that the total mean is statistically similar to the presumed mean of 1500.

The summary of the t-test results for each manufacturing lot:

![alt text](https://github.com/viernesr/MechaCar_Statistical_Analysis/blob/main/Resources/images/t-test_lot.PNG?raw=true)

1. Lot 1's mean is the exact value as the assumed mean, 1500, resulting the p-value have a value of 1. The null hypothesis cannot be rejected, showing there is no statistical difference from the presumed mean.
2. The mean for Lot 2 is 1500.2, with its p-value resulting to 0.6072. Since this is also higher than the assumed significance level of 0.05, the null hypothesis cannot be rejected, showing it is likely to not have a statistical difference from the presumed mean.
3. Lot 3, however, has a mean of 1496.14 and a p-value of 0.04168. This is lower than the assumed significance level of 0.05, the null hypothesis can be rejected, hence, showing that there is a statistical difference from the presumed mean of 1500. This clearly shows something unexpected happened from Lot 3 and should be checked to remove those not meeting the PSI variance criteria.

## Study Design: MechaCar vs Competition

The study would involve collecting data on MechaCar and comparing it to similar models across several different manufacturers over the last few years. A few questions that have to be addressed when doing this study:

* What are the competitions' comparable models?
* Which vehicles will MechaCar be competing head-to-head with competitors?
* What would determine the vehicles' selling prices?

### Metrics

The following metrics will be collected and then tested across all major manufacturers for the past few years:

* Independent Variables:
  * Safety Feature Rating
  * Engine Type
  * Maintenance Prices
  * Resale Value
  * MPG
* Dependent Variable(s):
  * Current Selling Price

### Null Hypothesis and Alternative Hypothesis

Null Hypothesis: MechaCar can be accurately estimated based on performance of key factors for its genre.
Alternative Hypothesis: MechaCar cannot be estimated based on performance of key factors for its genre.

### Statistical Tests

A multiple linear regression would be used to determine the significant variables that affect the selling price. The current selling price would be the only varialbe that could result in the final model.
