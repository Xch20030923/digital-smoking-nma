# Frequentist Network Meta-analysis (Main Analysis)
library(netmeta)
library(readxl)

data <- read_excel("data/frequency_data1.xlsx")
data$responders <- as.numeric(data$responders)
data$sampleSize <- as.numeric(data$sampleSize)

p1 <- pairwise(treatment, event = responders, n = sampleSize,
               studlab = study, data = data, sm = "RR")

net1 <- netmeta(TE, seTE, treat1, treat2, studlab, data = p1, sm = "RR",
                comb.fixed=FALSE, comb.random=TRUE, reference = "Standard_Care")
summary(net1)
forest(net1, ref = "Standard_Care")
