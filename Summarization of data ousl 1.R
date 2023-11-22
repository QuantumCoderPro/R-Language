##library(readxl)
r_dataset_marks_ousl <- read_excel("Softwares/R documents/r dataset marks ousl.xlsx")
View(r_dataset_marks_ousl)                                                                                 

Marks<-r_dataset_marks_ousl

###Numerical summarization##########################

##########Measures of central tendency
mean(Calculus)
median(Calculus)

##########Measures of location
min(Marks$Calculus)
max(Marks$Calculus)

quantile(Marks$Calculus,prob=c(0.25,.5,0.75))  ##quartiles

quantile(Marks$Calculus,prob=c(0.1,.2,0.3,0.4,0.5,0.6,0.7,.8,0.9))  ##deciles
quantile(Marks$Calculus,prob=seq(0.1,0.9,0.1))  ##deciles

quantile(Marks$Calculus,prob=seq(0.01,0.99,0.01))  ##percentiles


##########Measures of spread
range(Marks$Calculus)
var(Marks$Calculus)
sd(Marks$Calculus)


####Row means using rowMeans() function
rowMeans(Marks[,c("Calculus","DM","LA")])

Marks$Avg<-rowMeans(Marks[,c("Calculus","DM","LA")])
Marks

####Row sums using rowSums() function
rowSums(Marks[,c("Calculus","DM","LA")])

Marks$Total<-rowSums(Marks[,c("Calculus","DM","LA")])
Marks

####Column means using colMeans()
colMeans(Marks[,c("Calculus","DM")])

####Column sums using using colSums()
colSums(Marks[,c("Calculus","DM")])

####row wise statistics using apply()
apply(Marks[,c(5,6,7)],MARGIN=1,FUN=sum)  ##for rows MARGIN=1
Marks$Avg2<-apply(Marks[,c(5,6,7)],MARGIN=1,FUN=sum)
Marks

apply(Marks[,c(5,6,7)],MARGIN=1,FUN=mean)
apply(Marks[,c(5,6,7)],MARGIN=1,FUN=var)


####Column wise statistics using apply()
apply(Marks[,c(5,6,7)],MARGIN=2,FUN=sum)  ##for columns MARGIN=2
apply(Marks[,c(5,6,7)],MARGIN=2,FUN=mean)
apply(Marks[,c(5,6,7)],MARGIN=2,FUN=var)


####To get summary statistics
summary(Marks$Calculus)
summary(Marks$DM)


by(Marks$Calculus,Marks$Degree,mean)
by(Marks$Calculus,Marks$Degree,var)
by(Marks$Calculus,Marks$Degree,sum)
by(Marks$Calculus,Marks$Degree,summary)

###############
Marks$ID[Marks$DM>85]

Marks$ID[Marks$Calculus>80 & Marks$DM>80 & Marks$LA>80]

Marks$ID[Marks$Center=="Colombo" & Marks$Avg>85]

####To get a subset
subset(Marks,Degree=="DS")

sub<-subset(Marks,Marks$Center=="Colombo" & Marks$Avg>85)

subMarks<-data.frame(sub$ID,sub$Gender)
subMarks
subMarks[which(Marks$Center=="Colombo" & Marks$Avg>85),]
