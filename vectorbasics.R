#create vector using c()
v <- c(7,58,96,50.2)
v
is.numeric(v)
is.array(v)
is.double(v)
is.integer(v)

VE <- c(7L,58L,96L,50L)
is.numeric(VE)
is.array(VE)
is.double(VE)
is.integer(VE)

v3 <- c("H","H","H","H")
is.numeric(v3)
is.character(v3)

#sequence
seq(1,15)
1:15
z<-seq(1,15,2)
z
#repeat
rep(2,10)
x<-c("A","b","c")
seq(from =10 ,to=20 ,along.with = x)

rep(x, each=5)
rep(x, times=5)
