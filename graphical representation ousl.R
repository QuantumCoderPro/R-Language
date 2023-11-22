marks<-r_dataset_marks_ousl

t1<-table(marks$Gender)
######Pie chart
pie(t1)

pie(t1,main="Gender distribution",col=c("pink","blue"))

pie(t1,main="Gender distribution",col=rainbow(length(t1)))

######Bar chart
?barplot()

barplot(t1)

barplot(t1,
        main="Gender distribution",
        xlab="Gender",
        ylab="Counts",
        col=c("pink","blue"))



t2<-table(marks$Gender,marks$Degree)
t2
######Stacked bar chart
barplot(t2)

barplot(t2,
        legend=rownames(t2),
        col=c("pink","blue"),
        xlab="Degree",
        ylab="counts",
        main="Distribution of students according to gender and degree")

######Multiple bar chart
barplot(t2,
        legend=rownames(t2),
        col=c("pink","blue"),
        xlab="Degree",
        ylab="counts",
        main="Distribution of students according to gender and degree",
        beside=T)


data()    ##To get R data sets
?mtcars
attach(mtcars)    #To attach variables in mtcars data set to current R working session

######Box plot
boxplot(mpg)

boxplot(mpg,
        horizontal=T,
        main="Distribution of mpg",
        xlab="mpg")

boxplot(mpg,
        main="Distribution of mpg",
        ylab="mpg",
        col="green")

######Side by side box plot
boxplot(mpg~am)
boxplot(mpg~am,horizontal=T)

######Histogram
?par()
par(mfrow=c(1,3))   ##To split the plotting area into 1 by 3 (1 row and 3 columns)
hist(mpg)
hist(disp)
hist(hp)

par(mfrow=c(2,2))   ##To split the plotting area into 2 by 2 (2 rows and 2 columns)
hist(mpg)
hist(disp)
hist(hp)

par(mfrow=c(1,1))   ##To reset the plotting area


plot(mpg,wt,col="blue")

######Scatter plot matrix
pairs(~mpg+disp+hp)
