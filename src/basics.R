print("我人傻了")
a <- "谁"
print("length a:", length(a), "type a:", mode(a))
v <- c(1, 2, 3)
print(v)
v <- c(v, 4)
print(v)
j <- c(1, 2, 3.)
k <- c(1:10)
very_long_variable = 10

s <- c("none")
s <- c(s, "one")
print(s[2])

p <- list(name="heyao", age=27, cats=c("gong", "mu", "xiaoxiaogong"))
print(p$name)

grades <- list(name=c(), grade=c())
grades$name <- c(grades$name, "heyao")
grades$grade <- c(grades$grade, 80)

m <- matrix(1:12, 4, 3, dimnames=list(c("r1", "r2", "r3", "r4"), c("C1", "C2", "C3")))

arr <- array(1:24, dim=c(2, 3, 4))

df <- data.frame(a=1:4, b=2:5)









