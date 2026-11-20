# Financial Analysis 2025

This project analyses the 2025 results of a **fictional electrical wholesale business**. I used a synthetic journal ledger and monthly budget to build financial statements in Excel, check the figures in SQL Server and create a seven-page Power BI dashboard.

## Tools used
- Excel for the Profit & Loss, Balance Sheet and Budget vs Actual workbook
- SQL Server and SQL for ledger validation, trial balance and account checks
- Power BI Desktop and DAX for the financial dashboard
- Python for generating the synthetic source data

## Main results
| Metric | 2025 result |
|---|---:|
| Sales | R11,614,207.00 |
| Cost of Sales | R8,362,229.04 |
| Gross Profit | R3,251,977.96 |
| Operating Expenses | R1,480,597.00 |
| Net Profit | R1,771,380.96 |
| Gross Profit Margin | 28.00% |
| Net Profit Margin | 15.25% |
| Total Assets | R3,671,380.96 |
| Total Liabilities | R750,000.00 |
| Total Equity | R2,921,380.96 |
| Balance Sheet Difference | R0.00 |

Sales were **3.21% below** the R12 million budget. Net profit was **4.76% below** the R1.86 million budget.

## Power BI report pages
1. 2025 Financial Performance
2. 2025 Balance Sheet
3. 2025 Profit & Loss
4. 2025 Budget vs Actual
5. 2025 Cash Flow Analysis
6. 2025 Financial Ratios
7. 2025 Executive Summary

## Screenshots
The `Screenshots/` folder contains a JPEG for each of the seven Power BI pages.

## Repository folders
- `Data/` – synthetic financial ledger and monthly budget CSV files
- `Excel/` – completed financial statements and budget analysis
- `SQL/` – SQL checks and financial analysis queries
- `PowerBI/` – completed `.pbix` report
- `Screenshots/` – evidence for all seven report pages
- `Report/` – Financial Analysis report
- `UserGuide/` – instructions for using the dashboard

## How to open
Download the `.pbix` file from `PowerBI/` and open it in Power BI Desktop. The report was built from SQL Server database `FinanceAnalysis2025` and a budget CSV. Refreshing it on another computer may require updating the data-source paths and credentials.

## Important notes
- **The business and data are fictional.** VAT was excluded, and the figures are not audited financial statements.
- The ledger contains 114 journal entries.
- The cash analysis includes a R500,000 opening capital contribution. The cash movement excluding that contribution is a simplified reconciliation, not a formal statement of cash flows.
- Financial ratios use year-end balances and simplified current-liability assumptions.

## Author
Franza van den Heever
