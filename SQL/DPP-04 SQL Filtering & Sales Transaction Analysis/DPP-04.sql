USE company_db;

SELECT * FROM sales_transactions;

--- Ques 1
SELECT * FROM sales_transactions 
WHERE amount > 1000;

--- Ques 2
SELECT * FROM sales_transactions 
WHERE category = "Electronics" and amount > 500;

--- Ques 3
SELECT *
FROM sales_transactions
WHERE STR_TO_DATE(transaction_date, '%d-%m-%Y') > '2024-03-01';

--- Ques 4
SELECT *
FROM sales_transactions
WHERE amount BETWEEN 500 AND 1000
  AND category = 'Furniture';

--- Ques 5
SELECT *
FROM sales_transactions
WHERE payment_method IS NULL;

--- Ques 6
SELECT *
FROM sales_transactions
ORDER BY amount DESC;

--- Ques 7
SELECT category,
       COUNT(*) AS transaction_count
FROM sales_transactions
GROUP BY category;

--- Ques 8
SELECT category,
       COUNT(*) AS transaction_count
FROM sales_transactions
GROUP BY category
HAVING COUNT(*) > 3;

--- Ques 9
SELECT region,
       SUM(amount) AS total_sales
FROM sales_transactions
GROUP BY region
HAVING SUM(amount) > 3000;


--- Ques 10
SELECT DISTINCT region
FROM (
  SELECT region,
         category,
         AVG(amount)   AS avg_amount,
         COUNT(*)      AS cnt
  FROM sales_transactions
  GROUP BY region, category
  HAVING AVG(amount) > 800
     AND COUNT(*) > 3
) AS t;




