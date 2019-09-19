?ggplot()
library(ggplot2)
getwd()
movies<- read.csv(file.choose())
tail(movies)

colnames(movies)<-c("Film","Genre","CRating","ARating","BudgetMillions","Year")
str(movies)
summary(movies)
movies$Year<-factor(movies$Year)
tail(movies
     )
summary(movies)



#-------------------------Aesthetics

?ggplot()

ggplot(data = movies,aes(x=CRating,y=ARating))

#Add Geomatry
ggplot(data = movies,aes(x=CRating,y=ARating,
                         colour=Genre,size=BudgetMillions))+geom_jitter()
 ggplot(data = movies,aes(x=CRating,y=ARating,
                         colour=Genre))+
 geom_point()

#ADD SIZE
ggplot(data = movies,aes(x=CRating,y=ARating,
                         colour=Genre,size=BudgetMillions))+
    geom_point()


#-----------Plotting With Layer

p<-ggplot(data = movies,aes(x=CRating,y=ARating,
                         colour=Genre,size=BudgetMillions))
p    
p+geom_point()+geom_line()
p+geom_line()+geom_point()

#-----------Overridding Aesthetics
q<-ggplot(data = movies,aes(x=CRating,y=ARating,
                            colour=Genre,size=BudgetMillions))
#add geomatry
q+geom_point()

#Overridding Aesthetics
#EX1
q+geom_point(aes(size=CRating))

#EX2
q+geom_point(aes(colour=BudgetMillions))

#remain same
q+geom_point()

#EX3
q+geom_point(aes(x=BudgetMillions))+xlab("BudgetMillions$$$")

#Ex4
q+geom_line()+geom_point()
#Reduce Line
q+geom_line(size=.01)+geom_point()


r<-ggplot(data = movies, aes(x=CRating,y=ARating))
r+geom_point()
rm(r)
#Add Colour
#1. Mapping
r+geom_point(aes(colour=Genre))
r + geom_point(aes(size=BudgetMillions))
#2. Setting
r + geom_point(colour="darkgreen")
r+geom_point(size=2)
# 
# #ERROR
# r + geom_point(aes(colour="darkgreen"))
# r+geom_point(aes(size=2))

#--------------------HISTOGRAM

s<-ggplot(data = movies,aes(x=BudgetMillions))
s+geom_histogram(binwidth = 12)

#Add Colour
s+geom_histogram(binwidth = 12,fill="Red")

s+geom_histogram(binwidth = 12,aes(fill=Genre))

#ADD Border
s+geom_histogram(binwidth = 12,aes(fill=Genre),colour="black")


#Improve
s+ geom_density(aes(fill=Genre),col="black")
s+ geom_density(aes(fill=Genre),col="black",
                position = "Stack")

#-----------------LAyer
t<- ggplot(data = movies,aes(x=ARating))
t+geom_histogram(binwidth = 10,fill="red",col="black")

rm(t)
#Another way
t<- ggplot(data = movies)
t+geom_histogram(binwidth = 10,aes(x=CRating),fill="lightgreen",col="black")
t+geom_histogram(binwidth = 10,aes(x=movies$BudgetMillions),fill="pink",col="black")


#-----------Statics
u<-ggplot(data = movies,aes(x=CRating,y=ARating,col=Genre))
u+geom_point()
u+geom_point()+geom_smooth(fill= NA)

#BOXPLOT
u<-ggplot(data = movies,aes(x=Genre,y=ARating,col=Genre))
u+geom_boxplot()
u+geom_boxplot(size=1.2)
u+geom_boxplot(size=1.2)+geom_point()
#Trick
u+geom_boxplot(size=1.2)+geom_jitter()
u+geom_jitter()+geom_boxplot(size=1.2,alpha=.5)



#------------------ Using Facets
t+geom_histogram(aes(x=BudgetMillions,fill=Genre),
                 binwidth = 10,colour="black")

t+geom_histogram(aes(x=BudgetMillions,fill=Genre),
                 binwidth = 10,colour="black")+
    facet_grid(Genre~.)

#scaterplots

v<-ggplot(data = movies,aes(x=CRating,y=ARating,col=Genre))

v+geom_point(size=3)

#------------------------Facets
v+geom_point(size=3)+
    facet_grid(Genre~.)
v+geom_point(size=3)+
    facet_grid(.~Year)
v+geom_point(size=3)+
    facet_grid(Genre~Year)


v+geom_point(aes(size=BudgetMillions))+
    geom_smooth(fill=NA) +
    facet_grid(Genre~Year)

#-------------------------COORDINATE

v+geom_point(aes(size=BudgetMillions))
v+geom_point(aes(size=BudgetMillions))+xlim(50,100)+
    ylim(50,100)

a<-ggplot(data=movies,aes(x=movies$BudgetMillions))
a+geom_histogram(binwidth = 10,aes(fill=Genre),colour="black")

a+geom_histogram(binwidth = 10,aes(fill=Genre),colour="black")+
    ylim(0,50)

#Zoom

a+geom_histogram(binwidth = 10,aes(fill=Genre),colour="black")+
    coord_cartesian(ylim = c(0,50))

v+geom_point(aes(size=BudgetMillions))+
    geom_smooth(fill=NA) +
    facet_grid(Genre~Year)+
    coord_cartesian(ylim = c(0,100))

#-------------------Theme

a+geom_histogram(binwidth = 10,aes(fill=Genre),colour="black")

h<-a+geom_histogram(binwidth = 10,aes(fill=Genre),colour="black")
h
#Axex label
h+
    xlab("MONEY")+
    ylab("Number of movies")

#Add theme
h+
    xlab("MONEY")+
    ylab("Number of movies")+
    theme(axis.title.x = element_text(color ="Blue",size = 30),
          axis.title.y = element_text(color ="darkGreen",size = 30)
    )
    
h+
    xlab("MONEY")+
    ylab("Number of movies")+
    theme(axis.title.x = element_text(color ="Blue",size = 30),
          axis.title.y = element_text(color ="darkGreen",size = 30),
          axis.text.x = element_text(size = 20),
          axis.text.y = element_text(size = 20)
    )

h+
    xlab("MONEY")+
    ylab("Number of movies")+
    ggtitle("Movie Budget Distribution")+
    theme(axis.title.x = element_text(color ="Blue",size = 30),
          axis.title.y = element_text(color ="darkGreen",size = 30),
          axis.text.x = element_text(size = 20),
          axis.text.y = element_text(size = 20),
          legend.text = element_text(size = 20),
          legend.title = element_text(size =30),
          legend.position = c(1,1),
          legend.justification = c(1,1),
          plot.title = element_text(colour = "red",
                                    size = 35)
          
    )
