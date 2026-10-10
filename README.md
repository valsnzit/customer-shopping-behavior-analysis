# Customer Shopping Behavior Analysis

[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![pandas](https://img.shields.io/badge/pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)](https://pandas.pydata.org/)
[![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)   
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Excel](https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white)](https://www.microsoft.com/microsoft-365/excel)
[![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![GitHub](https://img.shields.io/badge/GitHub-121011?style=for-the-badge&logo=github&logoColor=white)](https://github.com/)   
[![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)](https://git-scm.com/)   

## 01. Project Overview

This project analyzes customer shopping behavior based on 3,900 purchase transactions. The goal is to understand spending patterns, customer segments, product preferences, discounts, subscriptions, and repeat purchase behavior to support better product decisions and marketing strategies.

I used Python for data preparation, PostgreSQL and SQL for the analysis, Excel for pivot tables and charts, and Power BI to present the main findings in an interactive dashboard.

## 02. Business Question

How can a company use consumer shopping data to identify trends, improve customer engagement, and optimize marketing and product strategies?

## 03. Project Workflow

The project follows these steps:

1. Load and prepare the original dataset using Python and pandas.
2. Check missing values, standardize column names, and validate the data.
3. Store the cleaned dataset in PostgreSQL.
4. Use SQL queries to answer business questions about customer behavior.
5. Use Excel pivot tables and charts to explore and summarize the results.
6. Build a Power BI dashboard to present the findings.

### Workflow Diagram

![Customer Shopping Behavior Analysis workflow](https://raw.githubusercontent.com/valsnzit/customer-shopping-behavior-analysis/main/customer-shopping-behavior-analysis/07_src/01_images/flowchart.png)   

## 04. Data Preparation

The original dataset contained 3,900 rows and 18 columns. I used Python and pandas to prepare the data before starting the analysis.

The data preparation process included:

- Loading the original CSV dataset.
- Checking the dataset structure, data types, and missing values.
- Standardizing column names to `snake_case`.
- Filling 37 missing review ratings using the median rating for each product category.
- Creating `age_group` and `purchase_frequency_days` columns.
- Checking whether `discount_applied` and `promo_code_used` contained redundant information.
- Removing `promo_code_used`.
- Validating the cleaned dataset.
- Loading the cleaned data into PostgreSQL.

The final cleaned dataset contains 3,900 rows and 19 columns.

## 05. SQL Analysis

I used PostgreSQL to answer business questions related to revenue, products, discounts, shipping methods, subscriptions, customer segments, repeat buyers, and age groups.

The analysis includes:

- Revenue by gender.
- Spending patterns among customers using discounts.
- Products with the highest review ratings.
- Average purchase amount by shipping type.
- Revenue and average spending by subscription status.
- Products with the highest discount rates.
- Customer segmentation.
- Top products within each category.
- Repeat buyers by subscription status.
- Revenue by age group.

The SQL scripts are available in the `03_sql/` folder.

## 06. Key Findings

### Overall Results

| Metric | Result |
|---|---:|
| Total revenue | $233,081 |
| Total purchases | 3,900 |
| Average purchase amount | $59.76 |
| Average review rating | 3.75 |

### Revenue by Gender

Male customers generated $157,890 in revenue, while female customers generated $75,191.

### Subscription Analysis

Non-subscribers generated $170,436 in revenue, compared with $62,645 from subscribers. However, the average purchase amount was similar for both groups: $59.87 for non-subscribers and $59.49 for subscribers.

This suggests that, in this dataset, subscription status was not associated with a major difference in average purchase amount.

### Top-Rated Products

The five products with the highest average review ratings were:

| Product | Average rating |
|---|---:|
| Gloves | 3.86 |
| Sandals | 3.84 |
| Boots | 3.82 |
| Hat | 3.80 |
| Skirt | 3.78 |

### Products with the Highest Discount Rates

| Product | Discount rate |
|---|---:|
| Hat | 50.00% |
| Sneakers | 49.66% |
| Coat | 49.07% |
| Sweater | 48.17% |
| Pants | 47.37% |

### Customer Segmentation

The customer segmentation results were:

| Segment | Customers |
|---|---:|
| Loyal | 3,116 |
| Returning | 701 |
| New | 83 |

The Loyal segment was the largest group in the dataset.

### Revenue by Age Group

The age groups generating the highest revenue were 25–34, with $45,400, and 45–54, with $45,370.

### Shipping Analysis

The highest average purchase amounts by shipping type were:

| Shipping type | Average purchase amount |
|---|---:|
| 2-Day Shipping | $60.73 |
| Express | $60.48 |
| Free Shipping | $60.41 |

These results show differences in average purchase amounts across shipping methods, although they do not establish that the shipping method caused those differences.

## 07. Power BI Dashboard

The Power BI report contains two pages: Overview and Detailed Analysis.

### Overview

This page presents the main metrics and gives a general view of customer shopping behavior, including:

- Total revenue and total purchases.
- Average purchase amount and average review rating.
- Revenue by gender.
- Revenue by subscription status.
- Revenue by age group.
- Customer segmentation.

It also includes slicers for gender, category, subscription status, and season.

![Power BI dashboard — Overview](https://raw.githubusercontent.com/valsnzit/customer-shopping-behavior-analysis/main/customer-shopping-behavior-analysis/07_src/01_images/customer_behavior_dashboard-1.png)   

### Detailed Analysis

This page focuses on product performance and customer purchasing patterns, including:

- Top five products by average rating.
- Average spending by subscription status.
- Repeat buyers by subscription status.
- Top five products by discount rate.
- Top three products within each category.

It includes slicers for category, season, discount applied, and shipping type.

![Power BI dashboard — Detailed Analysis](https://raw.githubusercontent.com/valsnzit/customer-shopping-behavior-analysis/main/customer-shopping-behavior-analysis/07_src/01_images/customer_behavior_dashboard-2.png)   

## 08. Business Recommendations

Based on the analysis, I identified the following recommendations:

**Focus on customer retention**

The Loyal segment is the largest customer group. Loyalty programs and retention campaigns could help maintain engagement and encourage continued purchases.

**Review subscription benefits**

Average spending is similar for subscribers and non-subscribers. The company could review its subscription offer and identify benefits that may encourage more customers to subscribe.

**Monitor discount use**

Products with high discount rates should be reviewed to understand whether discounts are necessary to support sales and how they may affect profitability.

**Promote highly rated products**

Products such as gloves, sandals, and boots could be highlighted in marketing campaigns and product recommendations.

**Use targeted marketing**

Customer segments and age groups could help the company create more relevant marketing campaigns and encourage repeat purchases.

## 09. Tools Used

| Tool | Purpose |
|---|---|
| Python | Data preparation and validation |
| pandas | Data cleaning and transformation |
| PostgreSQL | Storing the cleaned data |
| SQL | Answering business questions and analyzing trends |
| Microsoft Excel | Pivot-table analysis and charts |
| Power BI | Interactive dashboards and data visualization |

## 10. Repository Structure

The folders are organized in the order I followed during the project.

```text
customer-shopping-behavior-analysis/
│
├── .venv/           # Local Python virtual environment
├── .vscode/         # VS Code configuration
├── 01_data/         # Dataset files
├── 02_notebooks/    # Jupyter notebooks
├── 03_sql/          # SQL queries
├── 04_excel/        # Excel analysis and pivot tables
├── 05_powerbi/      # Power BI report
├── 06_report/       # Written report and project images
├── 07_src/          # Supporting source code
│
├── .gitignore       # Files excluded from Git
├── README.md        # Project documentation
└── requirements.txt # Python dependencies
```

## 11. How to Run the Project

### Requirements

- Python
- Jupyter Notebook or VS Code
- PostgreSQL
- Microsoft Excel
- Power BI Desktop

### Set up Python

Clone the repository and open the project folder:

```bash
git clone <YOUR_REPOSITORY_URL>
cd customer-shopping-behavior-analysis
```

Create a virtual environment:

```bash
python -m venv .venv
```

Activate it on Windows PowerShell:

```powershell
.\.venv\Scripts\Activate.ps1
```

Install the required Python libraries:

```bash
pip install -r requirements.txt
```

### Explore the analysis

- Open the notebook in `02_notebooks/`.
- Review and run the SQL scripts in `03_sql/` using your PostgreSQL setup.
- Open the Excel workbook in `04_excel/`.
- Open the Power BI report in `05_powerbi/` using Power BI Desktop.

Make sure the dataset paths and PostgreSQL connection settings match your local environment before running the analysis.

## 12. Conclusion

This project used Python, SQL, Excel, and Power BI to analyze 3,900 purchases and explore customer shopping behavior. The analysis highlights differences in revenue by gender, products with the highest ratings and discount rates, subscription revenue, customer segments, and repeat purchasing behavior.

These findings can support decisions related to customer retention, product promotion, discount review, and marketing strategies.
