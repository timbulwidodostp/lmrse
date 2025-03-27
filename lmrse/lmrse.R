# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Linear regression with clustered robust standard errors Use lmrse With (In) R Software
install.packages("remotes")
remotes::install_github("jrs95/lmrse")
library("lmrse")
lmrse = read.csv("https://raw.githubusercontent.com/timbulwidodostp/lmrse/main/lmrse/lmrse.csv",sep = ";")
# Estimation Linear regression with clustered robust standard errors Use lmrse With (In) R Software
y <- cbind(lmrse$lmrse_1, lmrse$lmrse_2, lmrse$lmrse_3, lmrse$lmrse_4)
x <- lmrse$x
c1 <- lmrse$c1
c2 <- lmrse$c2
cluster <- lmrse$cluster
lmrse_1 <- lmrse(y ~ x + c1 + c2, cluster = cluster)
summary(lmrse_1)
lmrse_2 <- coerce.lmrse(lmrse_1)
lmrse_2
# Linear regression with clustered robust standard errors Use lmrse With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished