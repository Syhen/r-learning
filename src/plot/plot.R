x = rnorm(1000)
y = rnorm(1000)
# plot(x, y)
x2 = rnorm(1000, 5, 2)
y2 = rnorm(1000, 5, 2)
xlim = range(c(x, x2))
ylim = range(c(y, y2))

plot(x, y, xlab="x", ylab="y", col="red", xlim=xlim, ylim=ylim, main="this is title")
points(x2, y2, col="blue")

heights = c(3, 4, 5)
grays = gray(1 - heights / max(heights))
barplot(heights, names.arg=c("a", "b", "c"), border=FALSE, col=grays)

dat = matrix(c(1:6), 2, 3)
barplot(dat, beside=TRUE)
box(bty="l")

x = c(1:4)
y = c(1, 3, 1, 6)
plot(x, y, lty="solid", lwd=2, col="dark red", type="l")
abline(v=0)  # 在x=0处添加竖直线

x = rnorm(10000)
hist(x, 100, border=FALSE, probability=TRUE)
lines(density(x))

# 离散数据计数
plot(table(c(1, 1, 2, 1, 2, 3, 4, 3, 3, 2, 1, 2, 2, 3, 4)), type="h")

# subplot

par(mfrow=(c(2, 2)))
q = seq(from=0, to=1, length.out=30)
plot(q, dbeta(q, 2, 4), type="l", main="2,4")
plot(q, dbeta(q, 4, 2), type="l", main="4,2")
plot(q, dbeta(q, 1, 1), type="l", main="1,1")
plot(q, dbeta(q, .5, .5), type="l", main=".5,.5")


