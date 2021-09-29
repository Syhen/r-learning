generate_verify_code = function(len=4) {
  numbers = c(0:9)
  chars = letters
  upper_chars = LETTERS
  verify_chars = c(numbers, chars, upper_chars)
  n_chars = length(verify_chars)
  idx = sample(1:n_chars, len, replace=TRUE)
  return(paste(verify_chars[idx], collapse=""))
}

print(generate_verify_code())
