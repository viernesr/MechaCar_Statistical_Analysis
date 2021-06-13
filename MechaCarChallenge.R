# Deliverable 1

library(dplyr)

MechaCar <- read.csv(file='./Resources/csv/MechaCar_mpg.csv', check.names=F, 
                     stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + 
   AWD,data= MechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
                   ground_clearance + AWD,data= MechaCar))

# Deliverable 2

Suspension <- read.csv(file='./Resources/csv/Suspension_coil.csv', check.names=F, 
                       stringsAsFactors = F)

total_summary <- Suspension %>% summarize(Mean=mean(PSI),Median=(PSI), 
                                          Variance=var(PSI), SD=sd(PSI),
                                          .groups = 'keep')
total_summary

lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% 
                summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), 
                          Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI), 
                          .groups = 'keep')
lot_summary

# Deliverable 3

t.test(Suspension$PSI,mu = 1500)
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
