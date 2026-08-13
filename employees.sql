

SELECT * FROM employees;

INSERT INTO employees (emp_id, name, dept_id, salary, hire_date)
VALUES (125, 'Surya', 'it', 50000, '2025-01-09'),
       (825, 'Bhanu', 'development', 60000, '2025-08-01'),
	   (925, 'Chinna', 'data_analytics', 90000, '2025-09-09'),
	   (126, 'Abhi', 'healthcare', 30000, '2026-11-09');
ALTER TABLE employees
ALTER COLUMN dept_id TYPE VARCHAR(20);
-------------------------------------------------------------------------------------------------------------------
							   --  DDL --
-- Write a query to create the Employees table with dept_id as a foreign key referencing Departments.
 CREATE TABLE employees (
 emp_id INT PRIMARY KEY,
 dept_id INT,
 CONSTRAINT fk_dept
 FOREIGN KEY (dept_id)
 REFERENCES departments(dept_id));
----------
ALTER TABLE employees
ADD CONSTRAINT fk_dept
FOREIGN KEY (dept_id)
REFERENCES departments(dept_id); -- but this column is not primitive or unique one to use this query.
------------
-- Add a new column email (VARCHAR) to the Employees table.
ALTER TABLE employees
ADD COLUMN email VARCHAR(50);
------------
-- Modify the salary column to change its data type to DECIMAL(10,2).
ALTER TABLE employees
ALTER COLUMN salary TYPE DECIMAL(10,2);
--------------
ALTER TABLE employees
ALTER COLUMN dept_id TYPE VARCHAR(20);
------------------

DELETE FROM employees e1
WHERE emp_id = 101;
-----------
INSERT INTO employees (emp_id, name, dept_id, salary, hire_date)
VALUES (101, 'sandeep', 'helathcare', 50000, '2025-01-09'),
       (124, 'jack sparrow', 'it', 20000, '2026-02-12');
--------------
-- Delete the email column from Employees.
ALTER TABLE employees
DROP COLUMN email;
---------------
-- Write a query to delete all rows from Employees without logging individual row deletions 
-- (i.e., empty it completely but keep the structure).
TRUNCATE TABLE employees;
--------------------------------------------------------------------------------------------------------------------------------------------
							  -- DML --
--Insert a new employee record into Employees.
INSERT INTO employees (emp_id, name, dept_id, salary, hire_date)
VALUES (101, 'sandeep', 1, 50000, '2025-01-09');
-------------------------------------------------------------------------------------
-- Insert multiple department records in a single statement. done
---------------------------------------------------------------------------------------------------
-- Update the salary of all employees in department 3 by increasing it 10%.
UPDATE employees 
SET salary = salary*1.10
WHERE dept_id = 'data_analytics';

UPDATE employees
SET dept_id = healthcare
WHERE emp_id = 101;

-- Delete all employees who were hired before 2015.
DELETE FROM employees
WHERE hire_date < '2015-01-01';

-- Select all columns for employees earning more than 50,000.
SELECT *
FROM employees
WHERE salary >= 50000;

-- Write a query to update an employee's department based on their emp_id.
UPDATE employees
SET dept_id = business
WHERE emp_id = 125;
--------------------------------------------------------------
                                                --  subquery --

SELECT * FROM Employees
WHERE salary >= (SELECT avg (salary) FROM employees); -- subquery which is un corelated and also not depends on outer query.
-----------------------------------------------------------------------------------------------
SELECT * FROM employees e1
WHERE salary >= (SELECT avg (salary) FROM employees e2 
                WHERE e2.dept_id=e1.dept_id
				);  -- corelated subquery 
----------------------------------------------------------------------------------


WITH emp_cte AS (
    SELECT *
    FROM employees
)
SELECT *
FROM emp_cte; -- CTE

------------------------------------------------
WITH empl_cte AS (
    SELECT *
    FROM employees
)
SELECT *
FROM empl_cte; -- CTE
-------------------------------------------------
WITH high_salary AS (
    SELECT *
    FROM employees
    WHERE salary > 50000
)
SELECT *
FROM high_salary; -- CTE example
----------------------------------------------------

WITH passed_students AS (
    SELECT batch,
           marks
    FROM school_info
    WHERE pass_fail = 'yes'
)
SELECT batch,
       AVG(marks) AS avg_marks
FROM passed_students
GROUP BY batch;
-----------------------------------
SELECT DISTINCT name
FROM employees;

SELECT *
FROM employees;

UPDATE employees
SET name = 'Sita'
WHERE emp_id = 125;

UPDATE employees
SET name = 'Tom'
WHERE emp_id = 825;

UPDATE employees
SET name = 'Jack'
WHERE emp_id = 126;

UPDATE employees
SET name = 'Rose'
WHERE emp_id = 925;

UPDATE employees
SET name = 'raju'
WHERE emp_id = 101;

DELETE FROM Employees
WHERE Name = 'jacksparrow';

\d employees;
