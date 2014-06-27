library(mcmc)
data(logit)
out <- glm(y~x1+x2+x3+x4, data=logit,family=binomial(),x=T)
summary(out)


x <- out$x
y <- out$y
lupost <- function(beta, x, y) {
  eta <- as.numeric(x %*% beta)
  logp <- ifelse(eta < 0, eta - log1p(exp(eta)), -log1p(exp(-eta)))
  logq <- ifelse(eta < 0, -log1p(exp(eta)), -eta - log1p(exp(-eta)))
  logl <- sum(logp[y == 1]) + sum(logq[y == 0])
  return(logl - sum(beta^2)/8)
}

set.seed(42)
beta.init <- as.numeric(coefficients(out))
out <- metrop(lupost, beta.init, 1000, x = x, y = y)
names(out)

out <- metrop(out, scale = 0.1, x = x, y = y)
out$accept

out <- metrop(out, scale = 0.3, x = x, y = y)
out$accept

out <- metrop(out, scale = 0.5, x = x, y = y)
out$accept

out <- metrop(out, scale = 0.4, x = x, y = y)
out$accept

out <- metrop(out, nbatch = 10000, x = x, y = y)
out$accept

out$time

plot(ts(out$batch))

acf(out$batch)

out <- metrop(out, nbatch = 100, blen = 100, outfun = function(z, ...) c(z, z^2), x = x, y = y)
out$accept

out$time

nrow(out$batch)

out$batch[1, ]

apply(out$batch, 2, mean)

foo <- apply(out$batch, 2, mean)
mu <- foo[1:5]
sigmasq <- foo[6:10] - mu^2
mu

mu.muce <- apply(out$batch[, 1:5], 2, sd)/sqrt(out$nbatch)
mu.muce

u <- out$batch[, 1:5]
v <- out$batch[, 6:10]
ubar <- apply(u, 2, mean)
vbar <- apply(v, 2, mean)
deltau <- sweep(u, 2, ubar)
deltav <- sweep(v, 2, vbar)
foo <- sweep(deltau, 2, ubar, "*")
sigmasq.mcse <- sqrt(apply((deltav - 2 * foo)^2, 2, mean)/out$nbatch)
sigmasq.mcse

sigma <- sqrt(sigmasq)
sigma.mcse <- sigmasq.mcse/(2 * sigma)
sigma.mcse

out <- metrop(out, nbatch = 500, blen = 400, x = x, y = y)
out$accept

out$time

foo <- apply(out$batch, 2, mean)
mu <- foo[1:5]
sigmasq <- foo[6:10] - mu^2
mu

mu.muce <- apply(out$batch[, 1:5], 2, sd)/sqrt(out$nbatch)
mu.muce


u <- out$batch[, 1:5]
v <- out$batch[, 6:10]
ubar <- apply(u, 2, mean)
vbar <- apply(v, 2, mean)
deltau <- sweep(u, 2, ubar)
deltav <- sweep(v, 2, vbar)
foo <- sweep(deltau, 2, ubar, "*")
sigmasq.mcse <- sqrt(apply((deltav - 2 * foo)^2, 2, mean)/out$nbatch)
sigmasq.mcse

sigma <- sqrt(sigmasq)
sigma.mcse <- sigmasq.mcse/(2 * sigma)
sigma.mcse

library(xtable)
data1 <- rbind(mu, mu.muce)
colnames(data1) <- c("constant", "x1", "x2", "x3", "x4")
rownames(data1) <- c("estimate", "MCSE")
data1.table <- xtable(data1, digits = 5)
print(data1.table, type = "html")

data2 <- rbind(sigmasq, sigmasq.mcse)
colnames(data2) <- c("constant", "x1", "x2", "x3", "x4")
rownames(data2) <- c("estimate", "MCSE")
data2.table <- xtable(data2, digits = 5)
print(data2.table, type = "html")

data3 <- rbind(sigma, sigma.mcse)
colnames(data3) <- c("constant", "x1", "x2", "x3", "x4")
rownames(data3) <- c("estimate", "MCSE")
data3.table <- xtable(data3, digits = 5)
print(data3.table, type = "html")
