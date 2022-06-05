library(dplyr)
library(tidyverse)

## Deliverable 1

# Import and read CSV file
MechaCar_mpg <- read_csv("Desktop/GW_Analysis_Folder/Module 15/MechaCar_Statistical_Analysis/Data/MechaCar_mpg.csv")

# Linear regression
lm(mpg ~ vehicle_weight + 
     spoiler_angle + 
     ground_clearance + 
     AWD + 
     vehicle_length,
   data=MechaCar_mpg)

# P-value and R-squared
summary(lm(mpg ~ vehicle_weight + 
             spoiler_angle + 
             ground_clearance + 
             AWD + 
             vehicle_length,
           data=MechaCar_mpg))

## Deliverable 2

#Import and read CSV 
Suspension_Coil <- read_csv("Desktop/GW_Analysis_Folder/Module 15/MechaCar_Statistical_Analysis/Suspension_Coil.csv")

# Total summary
# Create total summary
total_summary <-  Suspension_Coil %>% summarize(Mean=mean(PSI),
                                            Median=median(PSI),
                                            Variance=var(PSI),
                                            SD=sd(PSI), 
                                            .groups = 'keep')

# Creating lot summary
lot_summary <-  Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
           																	  Median=median(PSI),
           																	  Variance=var(PSI),
                                            								  SD=sd(PSI), 
                                            								  .groups = 'keep')

## Deliverable 3

# t-test across all lots
t.test(Suspension_Coil$PSI, mu=1500)

# t-test for Lot1 against population mean = 1500 PSI
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI,mu=1500)

# t-test for Lot2 against population mean = 1500 PSI
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot2")$PSI,mu=1500)

# t-test for Lot3 against population mean = 1500 PSI
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot3")$PSI,mu=1500)






  






