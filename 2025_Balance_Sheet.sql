WITH Ledger AS (
    SELECT Debit_Account AS Account, Amount AS Balance
    FROM dbo.financial_ledger_2025

    UNION ALL

    SELECT Credit_Account AS Account, -Amount AS Balance
    FROM dbo.financial_ledger_2025
),
Balances AS (
    SELECT Account, SUM(Balance) AS Balance
    FROM Ledger
    GROUP BY Account
),
Totals AS (
    SELECT
        SUM(CASE WHEN Account IN
            ('Cash', 'Accounts Receivable',
             'Inventory', 'Equipment')
            THEN Balance ELSE 0 END) AS Assets,

        -SUM(CASE WHEN Account IN
            ('Accounts Payable', 'Bank Loan')
            THEN Balance ELSE 0 END) AS Liabilities,

        -SUM(CASE WHEN Account = 'Opening Equity'
            THEN Balance ELSE 0 END) AS OpeningEquity,

        -SUM(CASE WHEN Account = 'Sales Revenue'
            THEN Balance ELSE 0 END)
        -
        SUM(CASE WHEN Account IN
            ('Cost of Sales', 'Rent Expense',
             'Salaries Expense', 'Utilities Expense',
             'Other Expenses')
            THEN Balance ELSE 0 END) AS NetProfit
    FROM Balances
)
SELECT
    Assets,
    Liabilities,
    OpeningEquity,
    NetProfit,
    OpeningEquity + NetProfit AS TotalEquity,
    Assets - Liabilities - OpeningEquity - NetProfit
        AS BalanceSheetDifference
FROM Totals;