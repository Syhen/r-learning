myfind = function(user_data) {
  min_name = user_data$name[which(user_data$grad == min(user_data$grad))]
  max_name = user_data$name[which(user_data$grad == max(user_data$grad))]
  return(list(min_name=min_name, max_name=max_name))
}

df = data.frame(grad=c(67, 78, 90), name=c("allen", "ann", "joan"))
print(myfind(df))
