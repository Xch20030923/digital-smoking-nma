# Bayesian Network Meta-analysis
library(gemtc)
library(readxl)

data <- read_excel("data/frequency_data1.xlsx")
data$responders <- as.numeric(data$responders)
data$sampleSize <- as.numeric(data$sampleSize)

network <- mtc.network(data)
model <- mtc.model(network, type="consistency", n.chain=4,
                   likelihood="binom", link="log", linearModel="random")
results <- mtc.run(model, n.adapt = 20000, n.iter = 50000, thin = 1)
summary(results)
