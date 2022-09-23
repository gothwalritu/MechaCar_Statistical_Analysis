library(dplyr)
mechaCar_data <- read.csv(file="../MechaCar_mpg.csv")
head(mechaCar_data)
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_data)
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_data))


Coil_data <- read.csv(file="../Suspension_Coil.csv")
head(Coil_data)

Mean = mean(Coil_data$PSI)
Median = median(Coil_data$PSI)
Variance = var(Coil_data$PSI)
SD = sd(Coil_data$PSI)

total_Summary <- data.frame(Mean,Median,Variance,SD)

head(total_Summary)

lot_summary <- Coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

head(lot_summary)

# Deliverable 3

# Compare sample versus population means

t.test(Coil_data$PSI, mu=mean(Coil_data$PSI))



Lot_1 <- Coil_data %>% filter(Manufacturing_Lot == "Lot1")
Lot_2 <- Coil_data %>% filter(Manufacturing_Lot == "Lot2")
Lot_3 <- Coil_data %>% filter(Manufacturing_Lot == "Lot3")

t.test(Lot_1$PSI, mu = mean(Coil_data$PSI))
t.test(Lot_2$PSI, mu = mean(Coil_data$PSI))
t.test(Lot_3$PSI, mu = mean(Coil_data$PSI))
