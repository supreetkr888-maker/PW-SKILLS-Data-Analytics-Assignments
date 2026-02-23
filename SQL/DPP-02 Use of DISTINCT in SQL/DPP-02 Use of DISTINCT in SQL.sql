--- Practical Use of DISTINCT in SQL
USE company_db; 
                   ---- Creating an orders table
CREATE TABLE orders (           
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    order_date DATE
);
INSERT INTO Orders (order_id, customer_id, product_name, order_date) VALUES
(101, 200, 'Laptop', '2025-01-15'),
(102, 201, 'Phone', '2025-01-16'),
(103, 202, 'Laptop', '2025-01-17'),
(104, 200, 'Tablet', '2025-01-18'),
(105, 203, 'Phone', '2025-01-19'),
(106, 204, 'Laptop', '2025-01-20'),
(107, 205, 'Phone', '2025-02-01'),
(108, 206, 'Tablet', '2025-02-02');

SELECT * from orders;
SELECT DISTINCT product_name             # Ques 1
FROM Orders; 

SELECT                                   #Ques 2
    customer_id,
    COUNT(DISTINCT product_name) AS unique_products_ordered
FROM Orders
GROUP BY customer_id;

SELECT COUNT(DISTINCT product_name) AS total_distinct_products     # Ques 3
FROM Orders;

SELECT product_name, latest_date                                   # Ques 4
FROM (
    SELECT product_name, MAX(order_date) AS latest_date
    FROM Orders
    GROUP BY product_name
) AS t
ORDER BY latest_date DESC
LIMIT 3;

--- Combining DISTINCT, LIMIT, and ORDER BY in SQL

SELECT DISTINCT product_name, order_date       # Ques 1
FROM orders
WHERE order_date >= '2025-01-01'
ORDER BY order_date DESC
LIMIT 2;


SELECT DISTINCT product_name, order_date         # Ques 2
FROM orders
WHERE customer_id = 200
ORDER BY order_date DESC
LIMIT 3;

SELECT product_name, COUNT(DISTINCT order_id) AS total_orders       # Ques 3
FROM orders
GROUP BY product_name
ORDER BY product_name ASC
LIMIT 5;

SELECT product_name, COUNT(DISTINCT order_id) AS distinct_orders       # Ques 4
FROM orders
GROUP BY product_name
ORDER BY distinct_orders DESC;


--- Optimizing Queries with DISTINCT and Indexing

SELECT product_name,                                                # Ques 1
       MAX(order_date) AS last_order
FROM orders
WHERE order_date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY product_name
ORDER BY last_order DESC
LIMIT 2;

--- Optimization Strategy:
-- Indexing:
--- Create an index on order_date → speeds up filtering by date.
--- Create an index on product_name → speeds up DISTINCT operation.
--- Composite index (product_name, order_date) → combines both for maximum efficiency.

CREATE INDEX idx_orders_product_date ON orders(product_name, order_date);

--- Why DISTINCT is expensive on large datasets?                     # Ques 2

--- DISTINCT requires scanning the dataset and removing duplicates.
--- Internally, the database may use sorting or hashing to identify unique values.
--- On millions of rows, this means:
--- High CPU usage (sorting large sets).
--- High memory usage (storing intermediate results).
--- Slower query response times.
--- Impact: Queries can become bottlenecks in high-traffic systems if not optimized with indexes or proper filtering.

SELECT DISTINCT product_name, order_date            # Ques 3
FROM orders
WHERE customer_id = 200
ORDER BY order_date DESC
LIMIT 3;

--- Why is this optimized?
--- Filter first: WHERE customer_id = 200 reduces dataset size before DISTINCT.
-- Indexing:
-- Index on (customer_id, order_date) ensures fast filtering and sorting.
-- LIMIT: Restricts results to only 3 rows, reducing unnecessary computation.

--- Query Optimization and Analysis with DISTINCT,LIMIT, and ORDER BY

EXPLAIN                                                           # Ques 1
SELECT product_name, COUNT(order_id) AS total_orders
FROM orders
WHERE order_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
GROUP BY product_name
ORDER BY total_orders DESC
LIMIT 10;

--- Recommended Indexes:                                              # Ques 2

--- order_date → speeds up filtering by date range.
--- product_name → speeds up grouping and DISTINCT.
--- Composite index (product_name, order_date) → combines filtering and grouping.

SELECT product_name,                                                  # Ques 3
       COUNT(*) AS order_count
FROM orders
WHERE order_date >= DATE_SUB(NOW(), INTERVAL 30 SECOND)
GROUP BY product_name
ORDER BY order_count DESC
LIMIT 5;

--- Why more efficient?

--- Removed DISTINCT order_id → since order_id is already unique, DISTINCT is redundant.
--- This reduces computation cost.
--- Indexing (order_date, product_name) ensures fast filtering and grouping.


--- Real-World Scenario and Complex Query Creation

SELECT product_name, MAX(order_date) AS last_order_date          # Ques 1
FROM orders
WHERE order_date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY product_name
ORDER BY last_order_date DESC
LIMIT 10;

--- Indexing Strategies:                                           # Ques 2

--- Index on order_date → speeds up filtering by last month.
--- Index on product_name → speeds up grouping.
--- Composite index (product_name, order_date) → optimal for this query.

SELECT o.product_name, o.customer_id, o.order_date                  # Ques 3
FROM orders o
INNER JOIN (
    SELECT product_name, MAX(order_date) AS last_order_date
    FROM orders
    WHERE order_date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
    GROUP BY product_name
) recent_orders
ON o.product_name = recent_orders.product_name
AND o.order_date = recent_orders.last_order_date
ORDER BY o.order_date DESC
LIMIT 10;