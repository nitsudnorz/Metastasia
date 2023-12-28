

library(tidyverse)

setwd("/Users/zorn/Documents/Metastasie")

e1_evolch4_preset <- read.delim("e1_evolch4_preset.txt", header = FALSE)
e1_evolch3_preset <- read.delim("e1_evolch3_preset.txt", header = FALSE)
e1_evolch2_preset <- read.delim("e1_evolch2_preset.txt", header = FALSE)

#####
e1_evolch1_preset <- read.csv("e1_evolch1_preset.txt", header = FALSE, sep = " ")

##e1_evolch1_preset <- read.csv("e1_evolch1_preset.txt", header = FALSE, sep = " ", row.names = 1)

nth(nth(e1_evolch1_preset,1),1)

test = nth(e1_evolch1_preset,2)

length(test)

nth(test)

typeof(nth(e1_evolch1_preset,2))

##get first element
(nth(e1_evolch1_preset,1))[[1]]

e1_evolch4_preset
e1_evolch1_preset

for (i in e1_evolch1_preset){
  print(i)
}

nth(e1_evolch1_preset, 2)

text(x, y, labels)

plot(-1:1, -1:1, type = "n", xlab = "Re", ylab = "Im")
K <- 8; text(exp(1i * 2 * pi * (1:K) / K), col = 2);
text(0.5, 0.5, "evolch3: 0 0 100")


which(sapply(x, function(y) x %in% y))