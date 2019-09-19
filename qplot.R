a<-read.csv(file.choose())
a
getwd()
rm(a)
a<-read.csv("DemographicData.csv")

#-------------------------------------------------------------#

a
nrow(a)# number of rows
ncol(a)# number of col
head(a)# head file
head(a, n=10)# head file of 10 dataset
tail(a)# tail file
tail(a,n=10)# tail file of 10 dataset
str(a) #structrue of dataset
summary(a) #summary of a

#------------------------------------------------------ Using the $ sign
a[3,3]
a[3,"Birth.rate"]
a$Internet.users #extract whole column
a$Internet.users[2]*a$Birth.rate[2]
a$Birth.rate[2]#extract specific cell in col




#=====================QPLOT
library("ggplot2")
qplot(data = a,x=Internet.users)
qplot(data = a,x=Income.Group,y=Birth.rate)
qplot(data = a,x=Income.Group,y=Birth.rate,size =10)
qplot(data = a,x=Income.Group,y=Birth.rate,size=I(10))
qplot(data = a,x=Income.Group,y=Birth.rate,size= I(3)
      ,colour =I("RED "))
qplot(data = a,x=Income.Group,y=Birth.rate,geom = "boxplot")
qplot(data = a,x=Income.Group,y=Birth.rate)

qplot(data = a,x=Internet.users,y=Birth.rate,size=I(4))
qplot(data = a,y=Internet.users,x=Birth.rate,size=I(6),colour=Income.Group)


#-------------------------------------Create DataFrame
mydf<- data.frame(Countries_2012_Dataset,Codes_2012_Dataset,Regions_2012_Dataset)
mydf
head(mydf)
colnames(mydf)<-c("Country","Code","Region")


#-------------------------------------Mergging DataFrame
head(a)
merg<- merge(a,mydf,by.x = "Country.Name",by.y = "Country")
head(merg)
merg<- merge(a,mydf,by.x = "Country.Code",by.y = "Code")
merg$Country<-NULL
head(merg)


#-------------------------------------QQPLOT
qplot(data = merg,x=Internet.users,y=Birth.rate)
qplot(data = merg,x=Internet.users,y=Birth.rate,colour=Region)

#-------------------------------------Shape
#Shape
    qplot(data = merg,x=Internet.users,y=Birth.rate,colour=Region,
      shape = I(18),size=I(6))
#TRanperemcy
qplot(data = merg,x=Internet.users,y=Birth.rate,colour=Region,size=I(5)
    ,  shape = I(18),alpha=.7)
#TITTLe
qplot(data = merg,x=Internet.users,y=Birth.rate,colour=Region,size=I(5)
      ,  shape = I(18),alpha=.06,main="BirthRate vs InternetUser")

