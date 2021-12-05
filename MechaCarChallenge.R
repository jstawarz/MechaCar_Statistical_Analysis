#Add library
library(dplyr)

#import csv
mpg <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F)

#perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg)

#summarize linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg))

#Deliverable 2: Create visualizations

#import csv
coils <- read.csv('Suspension_Coil.csv', stringsAsFactors = F)

#create summary
coil_summary <- coils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#create lot summary
lot_summary <- coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Deliverable 3: T-tests
?t.test()

#Lot 1
pop1 <- subset(coils, Manufacturing_Lot=='Lot1')
t.test(x=pop1$PSI, mu=1500)

#Lot 2
pop2 <- subset(coils, Manufacturing_Lot=='Lot2')
t.test(x=pop2$PSI, mu=1500)

#Lot 3
pop3 <- subset(coils, Manufacturing_Lot=='Lot3')
t.test(x=pop3$PSI, mu=1500)



