func_2 = function(x) {
  if (x == 1) return(TRUE)
  for (i in 2:floor(sqrt(x))) {
    if (x %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}
for (i in 1:100) {
  print(paste(i, func_2(i)))
}
