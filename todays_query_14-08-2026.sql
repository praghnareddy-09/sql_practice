
-- 1. SETUP: CREATE A PRACTICE SCHEMA AND TABLES
-- ============================================================================

DROP SCHEMA IF EXISTS sales CASCADE;
CREATE SCHEMA sales;

SET search_path TO sales, public;

-- Customers
CREATE TABLE customers (
    id          INT PRIMARY KEY,
    first_name  VARCHAR(50) NOT NULL,
    last_name   VARCHAR(50),
    country     VARCHAR(50),
    score       INT,
    customer_id INT UNIQUE
);

-- Employees
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name  VARCHAR(50) NOT NULL,
    last_name   VARCHAR(50),
    birth_date  DATE,
    job_title   VARCHAR(50)
);

-- Products
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product    VARCHAR(100) NOT NULL,
    price      NUMERIC(10,2) NOT NULL
);

-- Orders
CREATE TABLE orders (
    order_id       INT PRIMARY KEY,
    customer_id    INT,
    product_id     INT,
    salesperson_id INT,
    sales          NUMERIC(10,2),
    order_date     DATE,
    creation_time  TIMESTAMP,
    ship_date      DATE,
    CONSTRAINT fk_orders_customer
        FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    CONSTRAINT fk_orders_product
        FOREIGN KEY (product_id) REFERENCES products(product_id),
    CONSTRAINT fk_orders_employee
        FOREIGN KEY (salesperson_id) REFERENCES employees(employee_id)
);

-- 2. SAMPLE DATA
-- ============================================================================

INSERT INTO customers (id, first_name, last_name, country, score, customer_id)
VALUES
(1, 'Maria',  'Lopez',   'Germany', 480, 1),
(2, 'Max',    'Brown',   'USA',      650, 2),
(3, 'Anna',   'Smith',   'Germany', 520, 3),
(4, 'Martin', 'Wilson',  'UK',       300, 4),
(5, 'Sarah',  'Miller',  'USA',      720, 5),
(6, 'John',   'Taylor',  'India',      0, 6),
(7, 'Sam',    'Johnson', NULL,        100, 7),
(8, 'Emma',   'Anderson', 'USA',      580, 8),
(9, 'Andreas','Fischer', 'Germany',  450, 9),
(10,'Sahra',  'Khan',    'India',     NULL,10),
(11,'Ryan',   'Morgan',  'Canada',    410,11),
(12,'Mira',   'Martin',  'India',     530,12);

INSERT INTO employees (employee_id, first_name, last_name, birth_date, job_title)
VALUES
(101, 'David', 'Miller', '1988-02-15', 'Salesperson'),
(102, 'Emma',  'Davis',  '1992-07-10', 'Salesperson'),
(103, 'Daniel','Brown',  '1985-11-25', 'Manager'),
(104, 'Olivia','Wilson', '1995-04-05', 'Salesperson'),
(105, 'James', 'Taylor', '1990-09-18', 'Salesperson');

INSERT INTO products (product_id, product, price)
VALUES
(201, 'Laptop',      850.00),
(202, 'Keyboard',     45.00),
(203, 'Monitor',     300.00),
(204, 'Mouse',         25.00),
(205, 'Headphones',   80.00);

INSERT INTO orders
(order_id, customer_id, product_id, salesperson_id, sales, order_date, creation_time, ship_date)
VALUES
(1001, 1, 201, 101, 850.00, '2025-01-15', '2025-01-15 09:30:00', '2025-01-18'),
(1002, 2, 203, 102, 300.00, '2025-02-05', '2025-02-05 10:15:00', '2025-02-08'),
(1003, 3, 202, 101,  45.00, '2025-02-20', '2025-02-20 14:20:00', '2025-02-22'),
(1004, 5, 201, 103, 850.00, '2025-03-12', '2025-03-12 11:05:00', '2025-03-16'),
(1005, 8, 205, 104,  80.00, '2025-04-18', '2025-04-18 16:10:00', '2025-04-20'),
(1006, 9, 204, 105,  25.00, '2025-05-02', '2025-05-02 08:45:00', '2025-05-04'),
(1007, 1, 203, 102, 300.00, '2025-06-10', '2025-06-10 13:00:00', '2025-06-13'),
(1008, 3, 205, 101,  80.00, '2025-07-22', '2025-07-22 15:30:00', '2025-07-25'),
(1009, 5, 202, 104,  45.00, '2025-08-20', '2025-08-20 12:25:00', '2025-08-23'),
(1010, 11, 201, 103, 850.00, '2025-09-05', '2025-09-05 09:10:00', '2025-09-08'),
(1011, 12, 204, 105,  25.00, '2025-10-11', '2025-10-11 17:40:00', '2025-10-13'),
(1012, 2, 205, 102,  80.00, '2025-11-19', '2025-11-19 10:00:00', '2025-11-21');

-- ============================================================================
-- 3. SELECT ALL COLUMNS
-- ============================================================================

SELECT * FROM customers;
SELECT * FROM orders;

-- ============================================================================
-- 4. SELECT SPECIFIC COLUMNS
-- ============================================================================

SELECT first_name, country, score
FROM customers;

-- ============================================================================
-- 5. WHERE
-- ============================================================================

SELECT *
FROM customers
WHERE score != 0;

SELECT *
FROM customers
WHERE country = 'Germany';

SELECT first_name, country
FROM customers
WHERE country = 'Germany';

-- ============================================================================
-- 6. ORDER BY
-- ============================================================================

SELECT * FROM customers ORDER BY score DESC;
SELECT * FROM customers ORDER BY score ASC;
SELECT * FROM customers ORDER BY country ASC;
SELECT * FROM customers ORDER BY country ASC, score DESC;

SELECT first_name, country, score
FROM customers
WHERE score != 0
ORDER BY score DESC;

-- ============================================================================
-- 7. GROUP BY
-- ============================================================================

SELECT country, SUM(score) AS total_score
FROM customers
GROUP BY country;

-- This intentionally fails because first_name is not grouped/aggregated.
-- SELECT country, first_name, SUM(score) AS total_score
-- FROM customers
-- GROUP BY country;

SELECT
    country,
    SUM(score) AS total_score,
    COUNT(id) AS total_customers
FROM customers
GROUP BY country;

-- ============================================================================
-- 8. HAVING
-- ============================================================================

SELECT
    country,
    AVG(score) AS avg_score
FROM customers
GROUP BY country
HAVING AVG(score) > 430;

SELECT
    country,
    AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430;

-- ============================================================================
-- 9. DISTINCT
-- ============================================================================

SELECT DISTINCT country
FROM customers;

-- ============================================================================
-- 10. TOP -> PostgreSQL LIMIT
-- ============================================================================

SELECT *
FROM customers
LIMIT 3;

SELECT *
FROM customers
ORDER BY score DESC
LIMIT 3;

SELECT *
FROM customers
ORDER BY score ASC
LIMIT 2;

SELECT *
FROM orders
ORDER BY order_date DESC
LIMIT 2;

-- ============================================================================
-- 11. ALL TOGETHER
-- ============================================================================

SELECT
    country,
    AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430
ORDER BY AVG(score) DESC;

-- ============================================================================
-- 12. ADDITIONAL FEATURES
-- ============================================================================

SELECT * FROM customers;
SELECT * FROM orders;

SELECT 123 AS static_number;
SELECT 'Hello' AS static_string;

SELECT
    id,
    first_name,
    'New Customer' AS customer_type
FROM customers;

-- ============================================================================
-- 13. DDL: CREATE / ALTER / DROP
-- ============================================================================

CREATE TABLE IF NOT EXISTS persons (
    id INT PRIMARY KEY,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL
);

ALTER TABLE persons
ADD COLUMN IF NOT EXISTS email VARCHAR(50);

-- Practice separately if you want to remove the column:
-- ALTER TABLE persons DROP COLUMN phone;

-- Practice separately because it removes the table:
-- DROP TABLE persons;

-- ============================================================================
-- 14. DML: INSERT
-- ============================================================================

-- Use a fresh ID if running this example.
INSERT INTO customers (id, first_name, country, score, customer_id)
VALUES (20, 'Alex', 'USA', NULL, 20);

INSERT INTO customers (id, first_name, country, score, customer_id)
VALUES (21, 'Max', 'USA', 368, 21);

INSERT INTO customers (id, first_name, country, customer_id)
VALUES (22, 'Sahra', NULL, 22);

-- INSERT ... SELECT
INSERT INTO persons (id, person_name, birth_date, phone)
SELECT
    id + 100,
    first_name,
    NULL,
    'Unknown'
FROM customers
WHERE id <= 12;

-- ============================================================================
-- 15. UPDATE
-- ============================================================================

UPDATE customers
SET score = 0
WHERE id = 6;

UPDATE customers
SET score = 0,
    country = 'UK'
WHERE id = 10;

UPDATE customers
SET score = 0
WHERE score IS NULL;

SELECT *
FROM customers
WHERE score IS NULL;

-- ============================================================================
-- 16. DELETE / TRUNCATE
-- ============================================================================

-- Run separately if you want to practice DELETE:
-- SELECT * FROM customers WHERE id > 20;
-- DELETE FROM customers WHERE id > 20;

-- Run separately if you want to practice removing all rows:
-- DELETE FROM persons;
-- TRUNCATE TABLE persons;

-- ============================================================================
-- 17. FILTERING: COMPARISON OPERATORS
-- ============================================================================

SELECT * FROM customers WHERE country = 'Germany';
SELECT * FROM customers WHERE country <> 'Germany';
SELECT * FROM customers WHERE score > 500;
SELECT * FROM customers WHERE score >= 500;
SELECT * FROM customers WHERE score < 500;
SELECT * FROM customers WHERE score <= 500;

-- ============================================================================
-- 18. LOGICAL OPERATORS
-- ============================================================================

SELECT *
FROM customers
WHERE country = 'USA' AND score > 500;

SELECT *
FROM customers
WHERE country = 'USA' OR score > 500;

SELECT *
FROM customers
WHERE NOT score < 500;

-- ============================================================================
-- 19. BETWEEN
-- ============================================================================

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500;

SELECT *
FROM customers
WHERE score >= 100 AND score <= 500;

-- ============================================================================
-- 20. IN
-- ============================================================================

SELECT *
FROM customers
WHERE country IN ('Germany', 'USA');

-- ============================================================================
-- 21. LIKE
-- ============================================================================

SELECT *
FROM customers
WHERE first_name LIKE 'M%';

SELECT *
FROM customers
WHERE first_name LIKE '%n';

SELECT *
FROM customers
WHERE first_name LIKE '%r%';

SELECT *
FROM customers
WHERE first_name LIKE '__r%';

-- ============================================================================
-- 22. JOINS
-- ============================================================================

SELECT * FROM customers;
SELECT * FROM orders;

SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
INNER JOIN orders AS o
    ON c.id = o.customer_id;

SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
LEFT JOIN orders AS o
    ON c.id = o.customer_id;

SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.customer_id,
    o.sales
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.id = o.customer_id;

SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM orders AS o
LEFT JOIN customers AS c
    ON c.id = o.customer_id;

SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.customer_id,
    o.sales
FROM customers AS c
FULL JOIN orders AS o
    ON c.id = o.customer_id;

-- ============================================================================
-- 23. ADVANCED JOINS
-- ============================================================================

-- LEFT ANTI JOIN
SELECT *
FROM customers AS c
LEFT JOIN orders AS o
    ON c.id = o.customer_id
WHERE o.customer_id IS NULL;

-- RIGHT ANTI JOIN
SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.id = o.customer_id
WHERE c.id IS NULL;

-- Alternative RIGHT ANTI JOIN
SELECT *
FROM orders AS o
LEFT JOIN customers AS c
    ON c.id = o.customer_id
WHERE c.id IS NULL;

-- LEFT JOIN used as INNER JOIN
SELECT *
FROM customers AS c
LEFT JOIN orders AS o
    ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL;

-- FULL ANTI JOIN
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.customer_id,
    o.sales
FROM customers AS c
FULL JOIN orders AS o
    ON c.id = o.customer_id
WHERE o.customer_id IS NULL
   OR c.id IS NULL;

-- CROSS JOIN
SELECT *
FROM customers
CROSS JOIN orders;

-- ============================================================================
-- 24. MULTIPLE TABLE JOIN
-- ============================================================================

SELECT
    o.order_id,
    o.sales,
    c.first_name AS customer_first_name,
    c.last_name AS customer_last_name,
    p.product AS product_name,
    p.price,
    e.first_name AS employee_first_name,
    e.last_name AS employee_last_name
FROM orders AS o
LEFT JOIN customers AS c
    ON o.customer_id = c.customer_id
LEFT JOIN products AS p
    ON o.product_id = p.product_id
LEFT JOIN employees AS e
    ON o.salesperson_id = e.employee_id;

-- ============================================================================
-- 25. DATE AND TIME FUNCTIONS - POSTGRESQL
-- ============================================================================

-- PostgreSQL equivalent of GETDATE()
SELECT
    order_id,
    creation_time,
    DATE '2025-08-20' AS hard_coded,
    CURRENT_TIMESTAMP AS today
FROM orders;

-- DATE_TRUNC
SELECT
    order_id,
    creation_time,
    DATE_TRUNC('year', creation_time) AS year_dt,
    DATE_TRUNC('day', creation_time) AS day_dt,
    DATE_TRUNC('minute', creation_time) AS minute_dt
FROM orders;

-- PostgreSQL equivalent of DATENAME / DATEPART / YEAR / MONTH / DAY
SELECT
    order_id,
    creation_time,
    TO_CHAR(creation_time, 'Month') AS month_name,
    TO_CHAR(creation_time, 'Day') AS weekday_name,
    EXTRACT(DAY FROM creation_time) AS day_number,
    EXTRACT(YEAR FROM creation_time) AS year_number,
    EXTRACT(MONTH FROM creation_time) AS month_number,
    EXTRACT(HOUR FROM creation_time) AS hour_number,
    EXTRACT(QUARTER FROM creation_time) AS quarter_number,
    EXTRACT(WEEK FROM creation_time) AS week_number
FROM orders;

-- Aggregate orders by year
SELECT
    DATE_TRUNC('year', creation_time) AS creation,
    COUNT(*) AS order_count
FROM orders
GROUP BY DATE_TRUNC('year', creation_time)
ORDER BY creation;

-- PostgreSQL equivalent of EOMONTH()
SELECT
    order_id,
    creation_time,
    (
        DATE_TRUNC('month', creation_time)
        + INTERVAL '1 month'
        - INTERVAL '1 day'
    )::date AS end_of_month
FROM orders;

-- How many orders were placed each year?
SELECT
    EXTRACT(YEAR FROM order_date)::int AS order_year,
    COUNT(*) AS total_orders
FROM orders
GROUP BY EXTRACT(YEAR FROM order_date)
ORDER BY order_year;

-- How many orders were placed each month?
SELECT
    EXTRACT(MONTH FROM order_date)::int AS order_month,
    COUNT(*) AS total_orders
FROM orders
GROUP BY EXTRACT(MONTH FROM order_date)
ORDER BY order_month;

-- Friendly month names
SELECT
    TO_CHAR(order_date, 'FMMonth') AS order_month,
    COUNT(*) AS total_orders
FROM orders
GROUP BY EXTRACT(MONTH FROM order_date), TO_CHAR(order_date, 'FMMonth')
ORDER BY EXTRACT(MONTH FROM order_date);

-- Orders placed during February
SELECT *
FROM orders
WHERE EXTRACT(MONTH FROM order_date) = 2;

-- ============================================================================
-- 26. FORMAT -> PostgreSQL TO_CHAR
-- ============================================================================

SELECT
    order_id,
    creation_time,
    TO_CHAR(creation_time, 'MM-DD-YYYY') AS usa_format,
    TO_CHAR(creation_time, 'DD-MM-YYYY') AS euro_format,
    TO_CHAR(creation_time, 'DD') AS dd,
    TO_CHAR(creation_time, 'Dy') AS ddd,
    TO_CHAR(creation_time, 'Day') AS dddd,
    TO_CHAR(creation_time, 'MM') AS mm,
    TO_CHAR(creation_time, 'Mon') AS mmm,
    TO_CHAR(creation_time, 'FMMonth') AS mmmm
FROM orders;

-- Custom format
SELECT
    order_id,
    creation_time,
    'Day ' ||
    TO_CHAR(creation_time, 'Dy Mon') ||
    ' Q' ||
    EXTRACT(QUARTER FROM creation_time)::int ||
    ' ' ||
    TO_CHAR(creation_time, 'YYYY HH12:MI:SS AM') AS custom_format
FROM orders;

-- Month + year
SELECT
    TO_CHAR(creation_time, 'Mon YY') AS order_date,
    COUNT(*) AS total_orders
FROM orders
GROUP BY TO_CHAR(creation_time, 'Mon YY')
ORDER BY MIN(creation_time);

-- ============================================================================
-- 27. CONVERT -> PostgreSQL CAST / ::
-- ============================================================================

SELECT
    CAST('123' AS INTEGER) AS string_to_int,
    CAST('2025-08-20' AS DATE) AS string_to_date,
    creation_time,
    CAST(creation_time AS DATE) AS datetime_to_date,
    TO_CHAR(creation_time, 'MM/DD/YYYY HH24:MI:SS') AS usa_format,
    TO_CHAR(creation_time, 'DD/MM/YYYY HH24:MI:SS') AS euro_format
FROM orders;

-- ============================================================================
-- 28. CAST
-- ============================================================================

SELECT
    CAST('123' AS INTEGER) AS string_to_int,
    CAST(123 AS VARCHAR) AS int_to_string,
    CAST('2025-08-20' AS DATE) AS string_to_date,
    CAST('2025-08-20 10:30:00' AS TIMESTAMP) AS string_to_datetime,
    creation_time,
    CAST(creation_time AS DATE) AS datetime_to_date
FROM orders;

-- ============================================================================
-- 29. DATEADD -> PostgreSQL INTERVAL
-- ============================================================================

SELECT
    order_id,
    order_date,
    order_date - INTERVAL '10 days' AS ten_days_before,
    order_date + INTERVAL '3 months' AS three_months_later,
    order_date + INTERVAL '2 years' AS two_years_later
FROM orders;

-- DATEDIFF / age of employees
SELECT
    employee_id,
    birth_date,
    EXTRACT(YEAR FROM AGE(CURRENT_DATE, birth_date))::int AS age
FROM employees;

-- Average shipping duration in days for each month
SELECT
    EXTRACT(MONTH FROM order_date)::int AS order_month,
    AVG((ship_date - order_date)::numeric) AS avg_ship_days
FROM orders
GROUP BY EXTRACT(MONTH FROM order_date)
ORDER BY order_month;

-- Time gap between each order and previous order
SELECT
    order_id,
    order_date AS current_order_date,
    LAG(order_date) OVER (ORDER BY order_date) AS previous_order_date,
    order_date
        - LAG(order_date) OVER (ORDER BY order_date) AS number_of_days
FROM orders;

-- ============================================================================
-- 30. ISDATE -> PostgreSQL DATE VALIDATION
-- ============================================================================

-- PostgreSQL does not have SQL Server's ISDATE().
-- For a text value, first check that it has the expected YYYY-MM-DD pattern.
WITH test_dates(order_date_text) AS (
    VALUES
        ('2025-08-20'),
        ('2025-08-21'),
        ('2025-08-23'),
        ('2025-08')
)
SELECT
    order_date_text,
    CASE
        WHEN order_date_text ~ '^\d{4}-\d{2}-\d{2}$'
        THEN 1
        ELSE 0
    END AS is_valid_format,
    CASE
        WHEN order_date_text ~ '^\d{4}-\d{2}-\d{2}$'
        THEN order_date_text::date
        ELSE DATE '9999-01-01'
    END AS new_order_date
FROM test_dates;
