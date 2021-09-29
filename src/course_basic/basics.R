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

# 集合
u = unique(c(1, 1, 2, 3, 4))
print(u)
# union intersect setdiff(x, y) setequal
print(c(1, 2) %in% u)  # in operation
# level factor set

# 向量也可以直接做算术运算
# c(1, 2, 3) ^ 3

# 数据对象的访问
print(v[c(1, 2)])
print(df[1, 2])
df[,2] = 6:9
print(df)
print(df[df %% 2 == 0])  # 也可以切片后赋值
x = 1:10
s = c(FALSE, TRUE, FALSE)
print(x[s])  # 可以循环访问(output: 2, 5, 8)

users = data.frame(age=c(12, 23, 24, 35, 53), 
                   name=c("a", "b", "c", "d", "e"), 
                   weight=56:60)
print(users[users$age > 32,])  # 多个条件，与pandas一致
# rownames, colnames, names, rownames(x) = c(...)

# R中 if else 是java风格, ifelse(condition, yes, no)

score_str = function(x){
  if (x >= 85) {
    return("优秀")
  }
  if (x >= 60) {
    return("良好")
  }
  return("不及格")
}
print(score_str(90))

i = 0
repeat{
  if (i > 10) {
    break
  }
  print(i)
  i = i + 5
}

i = 0
while (i <= 10) {
  print(i)
  i = i + 5
}

for (i in c(1, 2, 3)) {
  print(i)
}

# 循环中 next 就是 continue

# 产生数据
ss = seq(1, 10, 0.5)
print(ss)
rep(1, 10)  # rep 1 10 times
print(sample(ss, 5, replace=FALSE, ))
runif(10, 0, 1)

print(which(x >= 5))

# load data from files

# rbind, cbind, df$new_name = vec

# unlist

# apply tapply sapply lapply

m = matrix(c(1:12), nrow=4, ncol=3)
apply(m, MARGIN=1, FUN=max)  # row wise
# apply(m, MARGIN=2, FUN=max)  # column wise, dim, axis, but start from 1









