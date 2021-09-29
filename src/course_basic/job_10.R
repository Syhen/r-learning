x = runif(10)
print(x)
# x[x < 0.5] = 0
# x[x > 0.5] = 1
# x = as.integer(x > 0.5)
x = sapply(x, FUN=function(x) return(as.integer(x > 0.5)))
x
