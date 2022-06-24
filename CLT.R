par(mfcol = c(2,3))
exp_draw <- function(n, rate){
  sample_dist <- integer(0)
  for(i in 1 : 1000){
    sample_dist[i] <- mean(rexp(n, rate = rate))
  }
  title <- paste0("n = ", n)
  hist(sample_dist, main = title)
  qqnorm(sample_dist, main = title)
  qqline(sample_dist)
}
exp_draw(50, 5)
exp_draw(500, 5)
exp_draw(5000, 5)


bern_draw <- function(n, prob){
  sample_dist <- integer(0)
  for(i in 1 : 1000){
    sample_dist[i] <- mean(rbinom(n, size = 1, p = prob))
  }
  title <- paste0("n = ", n)
  hist(sample_dist, main = title)
  qqnorm(sample_dist, main = title)
  qqline(sample_dist)
}
bern_draw(50, 0.1)
bern_draw(500, 0.1)
bern_draw(5000, 0.1)

