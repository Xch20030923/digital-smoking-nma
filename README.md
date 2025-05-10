# Digital Interventions for Smoking Cessation: A Network Meta-analysis of RCTs

This repository contains all code and data used for the analysis in our accepted article:  
**"Efficacy of Digital Intervention in Smoking Cessation: A Systematic Review and Network Meta-analysis of Randomized Controlled Trials"** (Nature Human Behaviour, 2025).

## 📄 Manuscript Summary

We conducted a frequentist and Bayesian network meta-analysis to evaluate the comparative effectiveness of various digital interventions (e.g., SMS, apps, phone) for smoking cessation. Interventions were categorized by methodological approach (personalized, group-customized, etc.) and delivery medium. Sensitivity analysis, meta-regression, publication bias assessment, and subgroup analyses were performed.

## 📁 Repository Structure

- `data/`: Raw input datasets (anonymized Excel files).
- `scripts/`: All R scripts used in the project.
- `output/`: Key results and visual outputs.
- `LICENSE`: Open-source license (e.g., MIT or CC BY 4.0).
- `README.md`: This file.

## 🛠️ Software & Packages

This project was developed using **R 4.3.3**. Key R packages used:

- `netmeta`
- `gemtc`
- `metafor`
- `meta`
- `ggplot2`
- `readxl`

## 📌 Instructions for Use

To reproduce the main analysis:

1. Clone this repository.
2. Open `scripts/01_frequentist_main_analysis.R`.
3. Ensure `data/frequency_data1.xlsx` is placed correctly.
4. Run the script in an R environment with all listed packages installed.

For Bayesian analysis, use:

```r
source("scripts/02_bayesian_network_model.R")
```

For meta-regression and subgroup:

```r
source("scripts/03_subgroup_meta_regression.R")
```

## 📊 Outputs

Key outputs include:

- Forest plots comparing each intervention with standard care
- League tables of pairwise comparisons
- P-score rankings of interventions
- Network diagrams
- Funnel plots for bias assessment
- Meta-regression results by covariates (age, sex, year, etc.)

## 📜 Citation

If you use this code, please cite our paper:

> Xu, C., Li, Y., Shen, L., et al. (2025). Efficacy of Digital Intervention in Smoking Cessation: A Network Meta-analysis of Randomized Controlled Trials. *Nature Human Behaviour*. https://doi.org/xx.xxxx/nhb.xxxxxx

## 📬 Contact

Corresponding Author:  
**Prof. Xuelei Ma** (drmaxuelei@gmail.com)  
Department of Biotherapy, West China Hospital, Sichuan University  

## 🔒 License

This repository is licensed under the MIT License / CC BY 4.0.
