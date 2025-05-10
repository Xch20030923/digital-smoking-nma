# Meta-regression and Subgroup Analysis
library(gemtc)
library(readxl)

data <- read_excel("data/frequency_data1.xlsx")
data$drug <- as.numeric(data$drug)
data$Average_age <- as.numeric(data$Average_age)

network <- mtc.network(data)
model_reg <- mtc.model(network, type="regression", 
                       regressor=list(coefficient='shared', 
                                      variable='Average_age', control='Standard_Care'))
results_reg <- mtc.run(model_reg, n.adapt = 20000, n.iter = 50000)
summary(results_reg)
