# Deliverable 1

library(dplyr)
library(tidyverse)

# Reading the .csv file and then performing a linear regression

MechaCar <- read.csv(file='./Resources/csv/MechaCar_mpg.csv', check.names=F, 
                     stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + 
   AWD,data= MechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
                   ground_clearance + AWD,data= MechaCar))

# Removing non-significant variables and then performing a linear regression

lm(mpg ~ vehicle_length + ground_clearance, data=MechaCar)

summary(lm(mpg ~ vehicle_length + ground_clearance, data=MechaCar))

# Deliverable 2

# Reading the .csv file and then getting a total summary and then a summary
# grouped by manufacturing lot

Suspension <- read.csv(file='./Resources/csv/Suspension_coil.csv', 
                       check.names=F, stringsAsFactors = F)

total_summary <- Suspension %>% summarize(Mean=mean(PSI),Median=(PSI), 
                                          Variance=var(PSI), SD=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep')

lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% 
                summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), 
                          Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI), 
                          Num_Coil=n(), .groups = 'keep')

# Displaying a box plot to provide a visualization of the above summaries

plt1 <- ggplot(Suspension,aes(y=PSI))
plt1 + geom_boxplot()

plt2 <- ggplot(Suspension,aes(x=Manufacturing_Lot,y=PSI))
plt2 + geom_boxplot()


# Deliverable 3

t.test(Suspension$PSI,mu = 1500)

t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
