a <- c(2,4,6,8,10)
a[1]
a[-1]
a[-3]
x=a[1:3]
x
x=a[c(1,3,5)]
x

b <- c(1,3,5,7,9)
c <- a+b
c
d <- a*b
d
c-b
d/a
a>b
a<b
d <- a**2

x <- rnorm(5)
for(i in x){
    print(i)
}
x[1]
#convenstional programming loop
for(j in 1:5){
    print(x[j])
}
n<-1000000
a<-rnorm(n)
b<-rnorm(n)

c<-a*b

d <- rep(NA,n)

for (i in 1:n) {
    d[i] = a[i]*b[i]
}
# for (i in 1:n) {
#     print(d[i])
# }

