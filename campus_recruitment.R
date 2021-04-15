#The next line reads in the csv data
#please replace the csv location as given when run file.choose() and choosing Placement_Data_Full_Class.csv

file.choose()
dist<-data.frame(read.csv("C:\\Users\\hoang\\Documents\\STAT201\\Placement_Data_Full_Class.csv"))

nrow(dist) #number of row in data set
summary(dist)
#Here's a way to output the descriptives in a format that's a little easier to import for your report.
write.csv(data.frame(summary(dist)),"C:\\Users\\hoang\\Documents\\STAT201\\Placement_Data_Summary.csv")

#Look at the distributions of the Degree Percentage and Salary variables.
#degree percentage histogram
hist(dist$degree_p,
     main = paste("Histogram of Degree Percentage"),
     xlim = range(50,100)) #xlim range we chose 50 because it is the minimum
#salary histogram
hist(dist$salary,
     main = paste("Histogram of Salary")) #change label if possible

plot(dist$degree_p,dist$salary,
     main = paste("Correlation b/w degree_p and salary"))

#cor(dist$degree_p, dist$salary) #supposedly find correlation between degree_p and salary