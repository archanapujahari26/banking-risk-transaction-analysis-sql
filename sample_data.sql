-- Insert sample customers
INSERT INTO customers VALUES
(1, 'Rahul Sharma', 35, 'Mumbai', 'Low'),
(2, 'Anita Verma', 45, 'Delhi', 'High'),
(3, 'Karan Patel', 28, 'Bangalore', 'Medium'),
(4, 'Priya Singh', 50, 'Chennai', 'High');

-- Insert sample accounts
INSERT INTO accounts VALUES
(101, 1, 'Savings', 150000.00),
(102, 2, 'Current', 50000.00),
(103, 3, 'Savings', 80000.00),
(104, 4, 'Savings', 20000.00);

-- Insert sample transactions
INSERT INTO transactions VALUES
(1001, 101, '2025-01-10', 20000.00, 'Credit'),
(1002, 101, '2025-01-12', 5000.00, 'Debit'),
(1003, 102, '2025-01-15', 10000.00, 'Debit'),
(1004, 103, '2025-02-01', 15000.00, 'Credit'),
(1005, 104, '2025-02-10', 2000.00, 'Debit');

-- Insert sample loans
INSERT INTO loans VALUES
(201, 2, 300000.00, 'Default'),
(202, 3, 150000.00, 'Active'),
(203, 4, 500000.00, 'Default');
