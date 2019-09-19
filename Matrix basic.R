
matrix() #creates matrix from data, not commonly used
rbind() #binds vectors by rows
cbind() #binds cols by cols

my.data <- 1:20
A <- matrix(my.data, 4, 5)
A
A[2,3]

B <- matrix(my.data, 4, 5, byrow=T)
B
B[2,5]

#rbind()
r1 <- c("I", "am", "happy")
r2 <- c("What", "a", "day")
r3 <- c(1, 2, 3)
C <- rbind(r1, r2, r3)
C


#cbind()
c1 <- 1:6
c2 <- -1:-6
D <- cbind(c1, c2)
D

#row name Given
Adarsh <- 1:5
Adarsh
names(Adarsh)= c("a","b","c","d","e")
Adarsh
Adarsh['d']
names(Adarsh)

#clear names
names(Adarsh) <- NULL
Adarsh

#----------------------------


#Naming Matrix Dimensions 1
temp.vec <- rep(c("a","B","zZ"), each=3)
temp.vec

Bravo <- matrix(temp.vec, 3, 3)
Bravo

rownames(Bravo) <- c("How", "are", "you?")
colnames(Bravo) <- c("X", "Y", "Z")
Bravo

Bravo["are", "Y"] <- 0
Bravo

rownames(Bravo)
rownames(Bravo) <- NULL
Bravo