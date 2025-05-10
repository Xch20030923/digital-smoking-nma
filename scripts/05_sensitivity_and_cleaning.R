# Sensitivity Analysis and Data Cleaning
library(readxl)

data <- read_excel("data/frequency_data1.xlsx")
data$responders <- as.numeric(data$responders)
data$sampleSize <- as.numeric(data$sampleSize)

# Remove duplicate study-treatment combinations
duplicates <- data[duplicated(data[, c("study", "treatment")]), "study"]
clean_data <- data[!data$study %in% duplicates$study, ]
write.csv(clean_data, "output/clean_data.csv", row.names = FALSE)
