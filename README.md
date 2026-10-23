# Credit Risk Analysis & Probability of Default (PD) Modeling

## Overview
Evaluating credit risk is a core function in banking and financial institutions. This project implements an end-to-end data pipeline and statistical modeling workflow to estimate the **Probability of Default (PD)** for retail loan applicants. 

The goal is to demonstrate how raw transactional and demographic records can be consolidated using **SQL**, cleaned and engineered into financial risk indicators using **Python (`pandas`)**, and modeled via **Logistic Regression (`scikit-learn`)** to segment borrowers into actionable risk tiers.

## Project Scope & Objectives
1. **Relational Data Extraction (SQL):** Simulate a production database environment using SQLite to join applicant profiles with historical loan records and compute baseline default rates via SQL aggregations.
2. **Data Cleansing & Feature Engineering (`pandas`):** Handle missing values, mitigate extreme outliers in income and employment records, and engineer domain-specific financial ratios (e.g., Debt-to-Income burden).
3. **Statistical Risk Modeling (`scikit-learn`):** Train and validate an interpretable Logistic Regression model to predict default probability ($PD$) and evaluate discrimination power using **ROC-AUC** and confusion matrix metrics.

## Repository Structure
```text
.
├── data/               # Raw datasets and local SQLite database (ignored in Git)
├── notebooks/          # Step-by-step analytical notebooks (EDA, feature engineering, modeling)
├── src/
│   └── queries.sql     # SQL scripts for table consolidation and risk aggregations
├── pyproject.toml      # Project metadata and dependencies
├── uv.lock             # Exact dependency lockfile for reproducibility
└── README.md           # Project documentation
```

## Tech Stack
- **Language:** Python $\ge$ 3.10
- **Database & Querying:** SQLite3, SQL (`JOIN`, `GROUP BY`, `CASE WHEN`)
- **Data Manipulation & Visualization:** `pandas`, `NumPy`, `Matplotlib`
- **Machine Learning:** `scikit-learn` 
- **Environment Management:** `uv`

## Setup & Reproducibility
This project uses [uv](https://github.com/astral-sh/uv) for fast and deterministic dependency management.

1. Clone the repository:
    ```
    git clone https://github.com/johhanz099/credit-risk-pd-modeling.git
    cd credit-risk-pd-modeling
    ```
    
2. Synchronize the virtual environment and install locked dependencies:
    ```
    uv sync
    ```
    

## Project Status (Roadmap)

- [x] Project structure and deterministic environment setup (`uv`)
    
- [ ] **Stage 1:** Relational schema creation and SQL extraction pipeline (`src/queries.sql`)
    
- [ ] **Stage 2:** Exploratory Data Analysis (EDA), outlier mitigation, and financial feature engineering
    
- [ ] **Stage 3:** Logistic Regression training, ROC-AUC evaluation, and risk tier segmentation