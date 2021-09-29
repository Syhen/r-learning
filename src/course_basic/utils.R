data_match_function = function(x, FUN) {
  false_fun = function(e){FALSE}
  b = tryCatch({FUN(x)}, Warning=false_fun, error=false_fun)
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
    b = data_match_function(samples, FUN) && 1
    print(paste(col, b))
    if ((!is.na(b)) && b) {
      choose_columns = c(choose_columns, col)
    }
  }
  return(aggregate(x[, choose_columns], by=by, FUN=FUN))
}
