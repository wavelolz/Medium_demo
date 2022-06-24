library(ggplot2)
func <- function(x){
  return(3*(x)^(1/3))
}
draw <- runif(100000, 0, 1)
result <- func(draw)  
df <- data.frame(x = result)
ggplot(df, aes(x = x)) +
  geom_histogram(aes(y = ..density..), fill = "white", color = "black", bins = 20) +
  stat_function(fun = function(x){return((x^2)/9)}, color = "blue")