create schema emp
CREATE TABLE emp.employees2 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    manager_id INT,
    city VARCHAR(50),
    FOREIGN KEY (manager_id) REFERENCES employees2(emp_id)
);
CREATE TABLE emp.customers2 (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);
CREATE TABLE emp.orders2 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers2(customer_id)
);
-- Insert into employees2
INSERT INTO emp.employees2 (emp_id, emp_name, department, salary, manager_id, city) VALUES
(101, 'Ravi', 'IT', 70000.00, 105, 'Hyderabad'),
(102, 'Priya', 'HR', 60000.00, 106, 'Chennai'),
(103, 'Arjun', 'I T', 90000.00, 105, 'Bangalore'),
(104, 'Sneha', 'Finance', 80000.00, 107, 'Hyderabad'),
(105, 'Kiran', 'IT', 120000.00, NULL, 'Hyderabad'),
(106, 'Rahul', 'HR', 95000.00, NULL, 'Chennai'),
(107, 'Anjali', 'Finance', 110000.00, NULL, 'Mumbai'),
(108, 'Vijay', 'Sales', 75000.00, 109, 'Pune'),
(109, 'Meena', 'Sales', 105000.00, NULL, 'Pune'),
(110, 'Suresh', 'IT', 85000.00, 105, 'Chennai');
-- Insert into customers2
INSERT INTO emp.customers2 (customer_id, customer_name, city) VALUES
(201, 'Amit', 'Hyderabad'),
(202, 'Neha', 'Chennai'),
(203, 'Rohit', 'Bangalore'),
(204, 'Divya', 'Mumbai'),
(205, 'Pooja', 'Hyderabad'),
(206, 'Raj', 'Delhi'),
(207, 'Swathi', 'Pune'),
(208, 'Naveen', 'Chennai');


-- Insert into orders2
INSERT INTO emp.orders2 (order_id, customer_id, order_date, amount, status) VALUES
(1001, 201, '2026-08-01', 5000.00, 'COMPLETED'),
(1002, 202, '2026-08-02', 3000.00, 'COMPLETED'),
(1003, 201, '2026-08-03', 7000.00, 'COMPLETED'),
(1004, 203, '2026-08-04', 2000.00, 'CANCELLED'),
(1005, 202, '2026-08-05', 8000.00, 'COMPLETED'),
(1006, 204, '2026-08-06', 12000.00, 'COMPLETED'),
(1007, 205, '2026-08-07', 15000.00, 'COMPLETED'),
(1008, 201, '2026-08-08', 4000.00, 'COMPLETED'),
(1009, 206, '2026-08-09', 9000.00, 'COMPLETED'),
(1010, 203, '2026-08-10', 11000.00, 'COMPLETED'),
(1011, 207, '2026-08-11', 6000.00, 'COMPLETED'),
(1012, 208, '2026-08-12', 4000.00, 'CANCELLED');


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- PART 1 — VIEW
-- 1. Create a view called it_employees that displays only employees from the IT department.
CREATE VIEW it_employees AS
SELECT emp_id, emp_name, department, salary, manager_id, city
FROM emp.employees2
WHERE department = 'IT';
-- 2. Create a view called employee_basic_details containing only emp_id, emp_name, department, and city.
CREATE VIEW employee_basic_details AS
SELECT emp_id, emp_name, department, city
FROM emp.employees2;
-- 3. Create a view called high_salary_employees that displays employees earning more than ₹90,000.
CREATE VIEW high_salary_employees AS
SELECT emp_id, emp_name, department, salary, manager_id, city
FROM employees2
WHERE salary > 90000;
-- 4. Create a view called hyderabad_employees that displays employees working in Hyderabad.
CREATE VIEW hyderabad_employees AS
SELECT emp_id, emp_name, department, salary, manager_id, city
FROM employees2
WHERE city = 'Hyderabad';
-- 5. Create a view called department_salary that displays each department and the total salary paid to that department.
CREATE VIEW department_salary AS
SELECT department, SUM(salary) AS total_salary
FROM employees2
GROUP BY department;
-- 6. Create a view called completed_orders containing only orders whose status is COMPLETED.
CREATE VIEW completed_orders AS
SELECT order_id, customer_id, order_date, amount, status
FROM orders2
WHERE status = 'COMPLETED';
-- 7. Create a view called customer_order_details by joining customers and orders. Display customer name, city, order ID, amount, and status.
CREATE VIEW customer_order_details AS
SELECT c.customer_name, c.city, o.order_id, o.amount, o.status
FROM customers2 c
JOIN orders2 o ON c.customer_id = o.customer_id;
-- 8. Create a view that displays each customer's total completed-order amount.
CREATE VIEW customer_total_completed_amount AS
SELECT c.customer_id, c.customer_name, SUM(o.amount) AS total_completed_amount
FROM customers2 c
JOIN orders2 o ON c.customer_id = o.customer_id
WHERE o.status = 'COMPLETED'
GROUP BY c.customer_id, c.customer_name;
-- Expected columns:
-- customer_id
-- customer_name
-- total_spent

-- 9. Create a view that displays employees whose salary is greater than ₹80,000 and whose city is Hyderabad or Chennai.
CREATE VIEW high_salary_hyd_chennai AS
SELECT emp_id, emp_name, department, salary, manager_id, city
FROM employees2
WHERE salary > 80000
  AND city IN ('Hyderabad', 'Chennai');
-- 10. Create a view called top_customers that displays customers whose total completed-order amount is greater than ₹10,000.
CREATE VIEW top_customers AS
SELECT c.customer_id, c.customer_name, SUM(o.amount) AS total_completed_amount
FROM customers2 c
JOIN orders2 o ON c.customer_id = o.customer_id
WHERE o.status = 'COMPLETED'
GROUP BY c.customer_id, c.customer_name
HAVING SUM(o.amount) > 10000;
-- Discuss on : 
-- Can we use a view inside another query just like a table?

SELECT * FROM employees2;
SELECT * FROM customers2;
SELECT 8 FROM orders2;
-- PART 2 — CTE
-- 1. Using a CTE, find the average salary of all employees and display employees earning more than the average salary.
WITH avg_salary AS (
    SELECT AVG(salary) AS avg_salary
    FROM employees2
)
SELECT e.emp_id, e.emp_name, e.department, e.salary
FROM employees2 e, avg_salary a
WHERE e.salary > a.avg_salary;
-- 2. Using a CTE, calculate the total completed-order amount for each customer.
WITH customer_totals AS (
    SELECT customer_id, SUM(amount) AS total_completed_amount
    FROM orders2
    WHERE status = 'COMPLETED'
    GROUP BY customer_id
)
SELECT c.customer_id, c.customer_name, ct.total_completed_amount
FROM customers2 c
JOIN customer_totals ct ON c.customer_id = ct.customer_id;
-- 3. Using a CTE, find employees whose salary is greater than ₹80,000.

-- 4. Create a CTE that calculates the average salary for each department. Then display employees whose salary is greater than their department's average.

-- 5. Create a CTE that calculates the number of completed orders for each customer. Display customers who have placed more than 1 completed order.

-- 6. Create a CTE that calculates total completed spending per customer. Join it with customers and display:
-- customer_name
-- city
-- total_spent

-- 7. Using a CTE, find the department having the highest average salary.

-- 8. Use two CTEs:
-- First CTE → calculate total completed spending per customer.
-- Second CTE → filter customers whose spending is greater than ₹10,000.
-- Return customer name and total spending.

-- 9. Using a CTE, find the employee with the highest salary in each department.

-- 10. Create multiple CTEs to find customers who:
-- have at least 2 completed orders
-- have spent more than ₹10,000
-- display their customer name, city, order count, and total spending.


-- PART 3 — SUBQUERY
-- 1. Find employees whose salary is greater than the average salary of all employees.
-- Hint:
-- SELECT ...
-- WHERE salary > (subquery)
-- 2. Find employees who earn the maximum salary in the company.
-- 3. Find employees who work in the same department as Ravi.
-- 4. Find employees whose salary is greater than Priya's salary.
-- 5. Find employees who earn more than the average salary of the IT department.
-- 6. Find customers who have placed at least one order.
-- 7. Find customers who have never placed an order.
-- 8. Find the second-highest salary using a subquery.
-- 9. Find employees who earn more than the average salary of employees working in Hyderabad.
-- 10. Find customers whose total completed-order amount is greater than the average completed-order amount of all customers.





-- PART 4 — CORRELATED SUBQUERY

-- 1. Find employees whose salary is greater than the average salary of their own department.
-- This is one of the best correlated-subquery examples.

-- 2. Find employees who earn the highest salary within their department.

-- 3. Find employees who earn more than their manager.
-- Remember:
-- Employee salary > Manager salary
-- Use manager_id.

-- 4. Find employees who are the only employee in their department earning more than ₹100,000.

-- 5. Find customers who have placed at least one completed order.
-- Use EXISTS.

-- 6. Find customers who have never placed a completed order.
-- Use:
-- NOT EXISTS

-- 7. Find customers who have placed more than one completed order.
-- The subquery should count orders for the current customer.

-- 8. Find employees whose salary is greater than every other employee's salary in the same department.
-- This should return the highest-paid employee(s) in each department.

-- 9. Find customers whose individual completed order amount is greater than that customer's average completed order amount.
-- For example:
-- Customer 201
-- ----------------
-- 5000
-- 7000
-- 4000

-- Average = 5333.33

-- 7000 > average
-- The subquery must calculate the average for the current customer.

-- 10. Find customers where the customer's total completed spending is greater than the average spending of customers from the same city.









