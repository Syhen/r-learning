min_max_scale = function(x, scale_range=c(0, 1)) {
  x_min = min(x)
  x_max = max(x)
  x = (x - x_min) / (x_max - x_min)
  a = scale_range[1]
  b = scale_range[2]
  x = x * (b - a) + a
  return(x)
}

standard_scale = function(x) {
  x_mean = mean(x)
  x_std = sqrt(var(x))
  x = (x - x_mean) / x_std
  return(x)
}