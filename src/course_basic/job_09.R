# df = read.table("input/grade.txt", header=TRUE, sep=",")
# apply(subset(df, select=-name), MARGIN=1, FUN=mean)

iris = read.table("input/iris.data", header=FALSE, sep=",")
for (i in 1:10) {
  iris = rbind(iris, iris)
}
print(nrow(iris))

t1 = Sys.time()
columns = c("V1", "V2", "V3", "V4")
max_val = apply(iris[, columns], MARGIN=2, FUN=max)
for (col in 1:length(columns)) {
  iris[, columns[col]] = iris[, columns[col]] / max_val[col]
}
# 辣鸡向量化，慢死
# n_rows = nrow(iris)
# n_columns = length(columns)
# max_val = t(data.frame(matrix(rep(max_val, n_rows), nrow=n_columns, ncol=n_rows)))
# iris[, columns] = iris[, columns] / max_val
# iris
print(Sys.time() - t1)
