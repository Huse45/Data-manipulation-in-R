#a)
data(pressure)
#scatterplot with temperature and pressure
plot(pressure~temperature,data=pressure,
     main="pressure and temperature",
     xlab="temperature",ylab="pressure",
     pch=16,col="blue")
curve((0.168 + 0.007*x)^(20/3), from = 0, to = 400, add = TRUE)
#b)
new_pressurevalues<-pressure$pressure^(3/20)
plot(new_pressurevalues~pressure$temperature,
     main="Linearized Plot of Pressure (New values) vs Temperature",#this is the title for question c)
     xlab="temperature",ylab="New pressure",
     pch=16,col="green")
#linear relation is slightly evident right now but not fully


slope_intercept<-lm(new_pressurevalues~pressure$temperature)#to find slope + intercept for abline() function
abline(slope_intercept,col="red")
#c), look at b)
#d)
par(mfrow = c(1, 2))  # Two columns, one row
#plot a)
plot(pressure~temperature,data=pressure,
     main="pressure and temperature",
     xlab="temperature",ylab="pressure",
     pch=16,col="blue")
curve((0.168 + 0.007*x)^(20/3), from = 0, to = 400, add = TRUE)
#plot of b)
new_pressurevalues<-pressure$pressure^(3/20)
plot(new_pressurevalues~pressure$temperature,
     main="Linearized Plot of Pressure (New values) vs Temperature",
     xlab="temperature",ylab="New pressure",
     pch=16,col="green")
#d) part 2 with one row 2 columns
