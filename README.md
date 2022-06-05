# MechaCar_Statistical_Analysis
## Project Overview
For this analysis, I utilized statistical testing methods in RStudio for an AutosRUs new prototype, the MechaCar. In order to continue with the manufacturing of this car, the team required a breakdown of the production data for better insights on how to move forward, to be best prepared against competing producers. 

Summary of the work includes:
- Performed linear regression analysis to identify the predictive variables for the mpg of the MechaCar 
- Collected summary statistics on the Pounds Per Square Inch (PSI) of the suspension coils 
- Utilized t-tests against the manufacturing lots and mean population
- Designed a statistical study comparing MechaCar performance against other vehicles

## Resources and Software
- [MechaCar_mpg.csv](https://github.com/leilacf/MechaCar_Statistical_Analysis/blob/main/Data/MechaCar_mpg.csv)
- [Suspension_Coil.csv](https://github.com/leilacf/MechaCar_Statistical_Analysis/blob/main/Data/Suspension_Coil.csv)
- ```R language and RStudio```

## Results and Analysis
### Linear Regression to Predict MPG

Linear Regression Model:

![This is an image](https://github.com/leilacf/MechaCar_Statistical_Analysis/blob/main/R%20Images/linear%20regression%20MechaCar_mpg.png)


Summary Statistics:

![This is an image](https://github.com/leilacf/MechaCar_Statistical_Analysis/blob/main/R%20Images/statistical%20summary%20MechaCar_mpg.png)

Analysis:
For our multiple linear regression model, below are the null and alternative hypothesis:

H0: The slope of the linear model is 0
Ha: The slope of the linear model is not 0 

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

In order to determine the variables which provide a non-random amount of variance, the p-value must be below 0.05 as then, it would be considered statistically unlikely. In the results, this has resulted in the following variables:
- *Intercept* with a p-value of 5.08 * 10-8
- *ground_clearance* with a p-value of 5.21 * 10-8
- *vehicle_length* with a p-value of 2.60 * 10-12

2. Is the slope of the linear model considered to be zero? 

The slope of the linear model is not considered to be zero as the p-value of the model is 5.35 * 10-11, indicating that we can reject the null hypothesis that the slope is zero. Therefore, there is evidence that a significant linear relationship exists between the variables and their effect on the mpg.

3. Does this linear model predict mpg of the MechaCar prototypes effectively?

In order to determine if the existing linear model predicts mpg effectively, an understanding of the R-squared value is needed. The R-squared, known as the goodness-of-fit measure, indicates the percentage of variance explained in the model. From the results, the R-squared value is 71.49%, showing that the linear relationship is quite strong--in this range, one can conclude that the model effectively predicts the mpg of the prototypes.

### Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? 

Total Summary:
![This is an image](https://github.com/leilacf/MechaCar_Statistical_Analysis/blob/main/R%20Images/total_summary%20df.png)

The total summary for the manufacturing data indicates that the lots meet the design specifications as the variance is 62.29356.

Per Lot summary:
![This is an image](https://github.com/leilacf/MechaCar_Statistical_Analysis/blob/main/R%20Images/lot_summary%20df.png)

However, not all of the individual lots meet the design specification. Lot's 1-2 indicate a variance of 0.9795918 and 7.4693878, but Lot 3 fails as it presents a variance of 170.2861224.

### T-Tests on Suspension Coils
T-tests were utilized to determine if the PSI across all manufacturing lots were statistically different from the population mean of 1,500 PSI.

Below are the null and alternative hypothesis:

H0: There is no statistical significance between the PSI and the population mean of 1,500

Ha: There is a statistical significance between the PSI and the population mean of 1,500 

T-test on all lots:
![This is an image](https://github.com/leilacf/MechaCar_Statistical_Analysis/blob/main/R%20Images/t-test%20all.png)

The given P-value is that of 0.0628, indicating that we do not reject the null and there is no statistical significance between the means.

T-test on individual lots:
**Lot 1**
![This is an image](https://github.com/leilacf/MechaCar_Statistical_Analysis/blob/main/R%20Images/t-test%20lot1.png)

**Lot 2**
![This is an image](https://github.com/leilacf/MechaCar_Statistical_Analysis/blob/main/R%20Images/t-test%20lot2.png)

**Lot 3**
![This is an image](https://github.com/leilacf/MechaCar_Statistical_Analysis/blob/main/R%20Images/t-test%20lot3.png)

- The P-value for lot 1 is equal to 1, indicating that we do not reject the null and there is no statistical significance between the means
- The P-value for lot 2 is equal to 0.6072 indicating that we do not reject the null and there is no statistical significance between the means
- The P-value for lot 3 is equal to 0.0416 indicating that we can reject the null as there is a statistically significant difference 

### Study Design: MechaCar vs Competition
For future analysis, the following evaluations and measures can be used to better understand the performance of the MechaCar with its competitors.

What metrics will you test?
With the rise in hybrid and electric vehicles, I think its important to test maintenance cost, fuel efficient/electric motor capacity, tailpipe emissions, and mileage. 

What is the null and alternative hypothesis?
H0: There is no difference in the performance of the MechaCar and its competitors in the metrics above 
Ha: There is statistically significanct difference in the performance of the MechaCar and its competitors in the metrics above

What statistical test would you use to test the hypothesis?
ANOVA statistical test can be used here as it aids in answering: is there a statistical difference between the distribution means from multiple samples?

What data is needed to run the statistical test?
To conduct this study, additional data needed includes:
- Vehicle make and model ID
- Price range and maintanence cost data
- Emission, mileage per gallon/charge, and fuel efficiency data







