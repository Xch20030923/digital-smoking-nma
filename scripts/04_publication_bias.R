# Publication Bias: Funnel Plot
library(netmeta)
library(readxl)

data <- read_excel("data/frequency_data1.xlsx")
data$responders <- as.numeric(data$responders)
data$sampleSize <- as.numeric(data$sampleSize)

p <- pairwise(treatment, event = responders, n = sampleSize,
              studlab = study, data = data, sm = "RR")

net <- netmeta(TE, seTE, treat1, treat2, studlab, data = p, sm = "RR",
               comb.fixed=FALSE, comb.random=TRUE, reference = "Standard_Care")
funnel(net)
