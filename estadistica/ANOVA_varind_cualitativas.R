data(CO2)

CO2.aov <- aov(uptake ~ Type + Treatment,data=CO2)
print(summary(CO2.aov))