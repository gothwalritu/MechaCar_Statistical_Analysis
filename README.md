### Module 15

## Statistics and R

### Deliverable 1:

## Linear Regression to Predict MPG

•	Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

a.	The picture below, shows that vehicle length and ground clearance have p values less than 0.05 and vehicle weight, spoiler angle and AWD are greater than 0.05. Hence, in reference to the p-values we could say that vehicle length and ground clearance will have the non-random amount of variance to the mpg values in the dataset. Whereas the parameters such as vehicle weight, spoiler angle and AWD will have random amount of variance on the mpg values in the dataset.

![Picture_1](https://github.com/gothwalritu/MechaCar_Statistical_Analysis/blob/main/Screenshots/pic_1.png)

•	Is the slope of the linear model considered to be zero? Why or why not?

b.	The overall p-value for this linear model is 35e-11 and is much smaller than the assumed significance level which is 0.05. Hence, we can say that there are enough evidence to reject the null hypothesis and there is relationship between the factors listed and the mpg values and it also indicates that the slope of this linear regression model in non-zero.

•	Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

c.	Yes, we can say that this linear model can predict the MechaCar prototypes effectively as the r-squared value is 0.7149. It means that approximately 71% of predictions can be determined by this model.

### Deliverable 2: 

## Summary Statistics on Suspension Coils

The MechaCar dataset contains the results for the test for weight capacities of multiple suspension coils for multiple lots in total_summary dataframe. Below image shows the summary for mean, mode median, variance, and standard deviation of the suspension coil’s PSI column for all the lot. Then, I created the similar summary for each lot using group_by() and summarize() functions and stored it as lot_summary dataframe. So, according to the results, the overall variance of the results of all the lots in the suspension coil test was not exceeding 100 pounds per square inch. However in the lot_summary dataframe, it shows that only Lot3 is approximately 170 pounds and is exceeding the 100 pounds per square inch limit. So, in total Lot1, Lot2 and Lot3 are meeting the design specifications, but individually only Lot1 and Lot2 are meeting and Lot3 is failing the design specification.


![Picture_2](https://github.com/gothwalritu/MechaCar_Statistical_Analysis/blob/main/Screenshots/Pic_2.png)

### Deliverable 3

##  T-Tests on Suspension Coils

I performed t-test to find if all manufacturing lots are statistically different from the mean value which is 1,500 pounds per sq. inch, and the p-value was 0.06028. Similarly, we also tested if individual lot is different from the total population mean and p-values for Lot1, Lot2, and Lot3 are 1, 0.6072, 0.04168 respectively, as shown below in the picture. The significant value should be below p = 0.05 has been assumed and that is why Lot3 found to be significantly different and total, Lot1, Lot3 are not significantly different from the median i.e., 1500 PSI, of the population. 

![Picture_3](https://github.com/gothwalritu/MechaCar_Statistical_Analysis/blob/main/Screenshots/Pic_3.png)

### Deliverable 4

## Study Design: MechaCar vs Competition

If we want to buy a car, we would like to buy the best one. As a customer there would be following metrics that would of interest: cost of the car, highway fuel efficiency, horsepower, cost of maintenance, how safe is the car, AWD, capacity and etc. 
In this section of the challenge, we are asked to design a statistical study to quantify the performance of MechaCar against the competition. So, maybe we can do ANOVA test as there are multiple companies of car and multiple parameters which are affecting the performance of the car. With ANOVA test we will be able to compare the averages of these different parameters with the average of MechaCar. We can choose the level of significance as 0.05. 

So, the null hypothesis, would be: there is no difference between the averages of Parameters of MechaCar from the competition.

And, the Alternate hypothesis would be: there is significant difference between the averages of MechaCar and competition, which could be better or worse. 

In ANOVA, we need the dependent variable to be continuous level of measurement. The independent variables could be nominal or ordinal. Here, the cost of the car could be dependent variable and the other parameters could be dependent variables. To perform ANOVA test the data should be normally distributed. 
