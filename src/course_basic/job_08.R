df = read.table("input/iris.data", sep=",")
means = mean(df$V1)
df$v1_means = means
