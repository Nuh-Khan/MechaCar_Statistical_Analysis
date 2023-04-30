library(dplyr)

#Import mechacar MPG file
MechaCar_mpg <- read.csv(file="MechaCar_mpg.csv")

#Perform Linear Regression 
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +
            AWD, data = MechaCar_mpg)

summary(reg)

#Import suspension coil data
Suspension_Coil <- read.csv(file="Suspension_Coil.csv")

#Summarize PSI information
total_summary <- summarize(Suspension_Coil, mean(PSI), median(PSI), var(PSI), sd(PSI))

#Group by Manufacturing lot
lot_groups <- group_by(Suspension_Coil, Manufacturing_Lot)

#Summary with each Manufacturing lot
lot_summary <- summarize(lot_groups, mean(PSI), median(PSI), var(PSI), sd(PSI))

#t.test for all lots
t_test_all <- t.test(Suspension_Coil$PSI, mu = 1500)
t_test_all

#t.test for lot1
t_test_lot1 <- t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot1"), mu = 1500)
t_test_lot1

#t.test for lot2
t_test_lot2 <- t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot2"), mu = 1500)
t_test_lot2

#t.test for lot3
t_test_lot3 <- t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot3"), mu = 1500)
t_test_lot3
