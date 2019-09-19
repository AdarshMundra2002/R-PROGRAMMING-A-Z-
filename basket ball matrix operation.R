#matrix opeartion

Games

rownames(Games)
colnames(Games)
Games["LeBronJames","2012"]

FieldGoals

round(FieldGoals / Games,digits=1)

round(MinutesPlayed / Games)

#Visualizing operation

#?matplot()
#we want to plot rows instead of columns (default in matplot)
#transpose matrix first
t(FieldGoals)
FieldGoals

#Normalizing Data (excluding injury)
matplot(t(FieldGoals/Games), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players, pch=15:18, col=c(1:4,6), horiz=F)
#matplot not commonly used


#Accuracy of Goals
matplot(t(FieldGoals/FieldGoalAttempts), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players, pch=15:18, col=c(1:4,6), horiz=F)

#Substring
x <- c("a","b","c","d","e")
x
x[c(1,5)]

#subsetting
x[1]

Games
Games[1:3, 6:10]
Games[c(1,10),]
Games[,c("2008","2009")]
Games[1,]
Games[1,5]

is.matrix(Games[1,])
is.vector(Games[1,])

Games[1, , drop=F]
Games[1, 5, drop=F] #drop=F will get same class of objects as matrix

#visualization of sub string

Data <- MinutesPlayed[1,, drop=F] #we want a matrix, so we do not drop index for visualization
Data

matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players[1:3], col=c(1:4,6), pch=15:18)

