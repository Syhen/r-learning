df = read.table("input/test.csv", header=TRUE, sep=",")
colnames(df)
age = df$age
df$age = df$name
df$name = age
write.csv(df, file="input/xxx.csv", quote=FALSE, row.names=FALSE)
