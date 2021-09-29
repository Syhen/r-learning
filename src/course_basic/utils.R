data_match_function = function(x, FUN) {
  false_fun = function(e){FALSE}
  b = tryCatch({FUN(x)}, warning=false_fun, error=false_fun)
  return(b)
}

better_aggregate = function(x, by, FUN) {
  columns = names(x)
  choose_columns = c()
  if (is.null(dim(x))) {
    return(aggregate(x, by=by, FUN=FUN))
  }
  # TODO: iris所有列data_match_function全返回NA
  samples = x[1:10, ]
  for (col in columns) {
    b = data_match_function(samples[, col], FUN) && 1
    if ((!is.na(b)) && b) {
      choose_columns = c(choose_columns, col)
    }
  }
  return(aggregate(x[, choose_columns], by=by, FUN=FUN))
}

iris = read.table("input/iris.data", sep=",", header=FALSE)
print(better_aggregate(iris, by=list(iris$V5), FUN=mean))
print(better_aggregate(iris$V1, by=list(iris$V5), FUN=mean))
print(better_aggregate(iris, by=list(iris$V5), FUN=length))
print(better_aggregate(iris$V5, by=list(iris$V5), FUN=length))
