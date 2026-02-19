-- 1 Total transaction amount per customer
SELECT c.name,
       SUM(t.amount) AS total_transaction_amount
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
JOIN transactions t ON a.account_id = t.account_id
GROUP BY c.name;

------------------------------------------------------

-- 2 Identify high-risk customers
SELECT name, city, risk_category
FROM customers
WHERE risk_category = 'High';

------------------------------------------------------

-- 3 Customers with loan default
SELECT c.name,
       l.loan_amount,
       l.loan_status
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
WHERE l.loan_status = 'Default';

------------------------------------------------------

--4 Monthly transaction summary
SELECT DATE_FORMAT(transaction_date, '%Y-%m') AS month,
       SUM(amount) AS total_amount
FROM transactions
GROUP BY month
ORDER BY month;

------------------------------------------------------

-- 5 Average account balance per customer
SELECT c.name,
       AVG(a.balance) AS avg_balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
GROUP BY c.name;

------------------------------------------------------

--6 Customers with total transactions above 20000
SELECT c.name,
       SUM(t.amount) AS total_amount
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
JOIN transactions t ON a.account_id = t.account_id
GROUP BY c.name
HAVING SUM(t.amount) > 20000;

------------------------------------------------------

-- 7 Count of transactions per account
SELECT account_id,
       COUNT(transaction_id) AS transaction_count
FROM transactions
GROUP BY account_id;

------------------------------------------------------

-- 8 Customers with savings account and high balance
SELECT c.name,
       a.account_type,
       a.balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
WHERE a.account_type = 'Savings'
  AND a.balance > 100000;

------------------------------------------------------

-- 9 Total loan amount issued
SELECT SUM(loan_amount) AS total_loan_amount
FROM loans;

------------------------------------------------------

--10 High-value transactions (above 15000)
SELECT *
FROM transactions
WHERE amount > 15000;
