# covid_19_deepanalysis
# COVID-19 Deep Analysis

[![GitHub Stars](https://img.shields.io/github/stars/Hamzah125/covid_19_deepanalysis?style=social)](https://github.com/Hamzah125/covid_19_deepanalysis)
[![License](https://img.shields.io/badge/License-MIT-blue)](https://opensource.org/licenses/MIT)

A comprehensive analysis of COVID-19 patient data using statistical methods and machine learning to uncover trends in ICU admissions, age, and clinical metrics.


## 🚀 Project Overview
This project analyzes COVID-19 patient data to answer key questions:
- Do ICU patients show distinct clinical markers (e.g., mapping rate)?
- How do age and sex influence outcomes?
- Can we predict ICU admission using patient metrics?

## 📂 Dataset
kaggle data set covid 19
**Variables**:
- `age`: Patient age
- `sex`: Biological sex
- `hospital.room`: ICU/NonICU status
- `mapping.rate`: Clinical/biomarker metric  

**Preprocessing**:
- Missing values imputed with median age.
- Categorical variables encoded as factors.

## 🔬 Methodology
1. **Exploratory Data Analysis (EDA)**:  
   - Visualized distributions (boxplots, histograms).  
   - Compared ICU vs NonICU groups using t-tests.  

3. **Tools**:  
   - `R` (tidyverse, ggplot2, caret)  
   - `Jupyter Notebook` for documentation.

## 📊 Results
### Key Findings
- ICU patients had **significantly higher mapping rates** (p < 0.05).  
- Age was a stronger predictor of ICU admission than sex.  

![Age vs Mapping Rate by ICU Status](images/age_vs_mapping.png)  
*Scatterplot showing ICU patients (red) cluster with higher mapping rates.*

## 💻 Installation
1. Clone the repository:  
   ```bash
   git clone https://github.com/Hamzah125/covid_19_deepanalysis.git
