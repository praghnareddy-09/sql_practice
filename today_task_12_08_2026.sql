-- Display all employees. 1
SELECT employee_id, name, department, salary, age FROM employee1; 
--Display only employee names. 2
SELECT name FROM employee1;
--Display employee name and salary. 3
SELECT name, salary FROM employee1;
--Display employee ID, name and department. 4
SELECT employee_id, name, department FROM employee1;
--Display name, age and salary. 5
SELECT name, age, salary FROM employee1;
--Display all columns using *. 6
SELECT * FROM employee1;
--Display only the department column. 7
SELECT department FROM employee1;
--Display only the salary column. 8
SELECT salary FROM employee1;

--Display employee name with salary. 9
SELECT name, salary FROM employee1;
--Display employee name and department. 10
SELECT name, department FROM employee1;
--Display salary multiplied by 12 as annual salary. 11
SELECT salary*12 as "annual salary" FROM employee1;
--Display employee name and salary + 5000 as revised salary. 12
SELECT name, salary, salary + 5000 AS "revised salary" FROM employee1;
--Display employee name and age + 5. 13
SELECT name, age + 5 FROM employee1;
--Rename salary as monthly_salary. 14
ALTER TABLE employee1
RENAME COLUMN salary TO monthly_salary; 

SELECT salary AS monthly_salary
FROM employee1;
--Rename salary * 12 as annual_salary. 15
SELECT salary * 12 AS annual_salary FROM employee1

-- WHERE — Questions --

--Find employees whose salary is greater than 50,000. 16
SELECT * FROM employee1
WHERE salary > 50000;
--Find employees whose salary is less than 60,000. 17
SELECT * FROM employee1
WHERE salary < 60000;
--Find employees whose salary is equal to 50,000. 18
SELECT * FROM employee1
WHERE salary = 50000;
--Find employees whose age is greater than 25. 19
SELECT * FROM employee1
WHERE age > 25;
--Find employees whose age is less than or equal to 30. 20
SELECT * FROM employee1
WHERE AGE >= 30;
--Find employees from the IT department. 21
SELECT * FROM employee1
WHERE department = 'IT';
--Find employees from HR. 22
SELECT * FROM employee1
WHERE department = 'HR';
--Find employees whose salary is greater than 70,000. 23
SELECT * FROM employee1
WHERE salary > 70000;
--Find employees whose age is exactly 30. 24
SELECT * FROM employee1
WHERE age = 30;
--Find employees whose salary is not 50,000. 25
SELECT * FROM employee1
WHERE salary != 50000;

--Find employees from IT earning more than 60,000. 26
SELECT * FROM employee1
WHERE department = 'IT'
AND salary > 60000;
--Find employees from HR whose salary is less than 50,000. 27
SELECT * FROM employee1
WHERE department = 'HR'
AND salary < 50000;
--Find employees older than 25 earning more than 60,000. 28
SELECT * FROM employee1
WHERE age > 50
AND salary > 60000;
--Find employees younger than 30 earning more than 50,000. 29
SELECT * FROM employee1
WHERE age < 30 
AND salary > 50000;
--Find employees from Finance earning more than 70,000. 30
SELECT * FROM employee1
WHERE department = 'Finance'
AND salary > 70000;


--Display all unique departments. 31
SELECT DISTINCT department FROM employee1;
--Display all unique ages. 32
SELECT DISTINCT age FROM employee1;
--Display all unique salaries. 33
SELECT DISTINCT salary FROM employee1;
--Find the number of unique departments. 34
SELECT COUNT(DISTINCT department) FROM employee1;
--Find the number of unique salaries. 35
SELECT COUNT(DISTINCT salary) FROM employee1;
--Find unique combinations of department and salary. 36
SELECT DISTINCT department, salary FROM employee1;
--Find unique combinations of department and age. 37
SELECT DISTINCT department, age FROM employee1;

--Display employees in ascending order of salary. 38
SELECT * FROM employee1
ORDER BY salary ASC;
--Display employees in descending order of salary. 39
SELECT * FROM employee1
ORDER BY salary DESC
--Display employees by age ascending. 40
SELECT * FROM employee1
ORDER BY age ASC;
--Display employees by age descending. 41
SELECT * FROM employee1
ORDER BY age DESC;
--Display employees alphabetically by name. 42
SELECT * FROM employee1
ORDER BY name ASC;
--Display employees in reverse alphabetical order. 443
SELECT * FROM employee1
ORDER BY name DESC;

--Sort employees by department. 44
SELECT * FROM employee1
ORDER BY department;
--Sort employees by salary descending. 45
SELECT * FROM employee1
ORDER BY salary DESC;
--Sort employees by department ascending and salary descending. 46
SELECT * FROM employee1
ORDER BY department ASC, salary DESC;
--Sort employees by age ascending and salary descending. 47
SELECT * FROM employee1
ORDER BY age ASC, salary DESC;
--Display the highest-paid employee first. 48
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1;
--Display the lowest-paid employee first. 49
SELECT *
FROM employee1
ORDER BY salary ASC
LIMIT 1;

--Find the first 5 employees. 50
SELECT * FROM employee1
LIMIT 5;
--Find the top 3 highest-paid employees. 51
SELECT *
FROM employee1
ORDER BY salary DESC
LIMIT 3;
--Find the top 5 lowest-paid employees. 52
SELECT * FROM employee1
ORDER BY salary ASC 
LIMIT 5;
--Find the first 10 employees ordered by salary. 53
SELECT *
FROM employee1
ORDER BY salary ASC
LIMIT 10;

--Find the second-highest salary using ORDER BY and LIMIT. 54
SELECT salary
FROM employee1
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
--Find the top 3 salaries. 55
SELECT salary
FROM employee1
ORDER BY salary DESC
LIMIT 3;
--Find the employee with the highest salary. 56
SELECT *
FROM employee1
ORDER BY salary DESC
LIMIT 1;
--Find the employee with the lowest salary. 57
SELECT *
FROM employee1
ORDER BY salary ASC
LIMIT 1;
--Find the second-highest-paid employee. 58
SELECT *
FROM employee1
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
--Find the third-highest-paid employee. 59
SELECT *
FROM employee1
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

-- SQL Operators — Questions
-- A. Comparison Operators

-- Practice:

-- =
-- >
-- <
-- >=
-- <=
-- <>
-- !=

-- Questions:

-- Find employees earning more than 60,000. 60
SELECT * FROM employee1
ORDER BY salary DESC
LIMIT 1 ;
-- Find employees earning less than 60,000. 61
SELECT * FROM employee1
WHERE salary < 60000;
-- Find employees earning exactly 60,000. 62
SELECT * FROM employee1
WHERE salary = 60000;
-- Find employees earning at least 60,000. 63
SELECT * FROM employee1
WHERE salary >= 60000;
-- Find employees earning at most 60,000. 64
SELECT * FROM employee1
WHERE salary <= 60000;
-- Find employees whose salary is not 60,000. 65
SELECT * FROM employee1
WHERE salary != 60000;

-- 8. AND / OR / NOT
-- Questions
-- Find employees from IT AND earning more than 60,000. 66
SELECT * FROM employee1
WHERE department = 'IT'
AND	  salary > 60000;
-- Find employees from HR AND age greater than 25. 67
SELECT * FROM employee1
WHERE department = 'HR'
AND age > 25;
-- Find employees from IT OR HR. 68
SELECT *
FROM employee1
WHERE department = 'IT'
   OR department = 'HR';
-- Find employees earning more than 70,000 OR age below 25. 69
SELECT * FROM employee1
WHERE salary > 70000
OR age < 25;
-- Find employees NOT belonging to HR. 70
SELECT *
FROM employee1
WHERE department <> 'HR';
-- Find employees NOT earning 50,000. 71
SELECT *
FROM employee1
WHERE salary <> 50000;
-- Find employees from IT AND salary greater than 60,000 AND age below 35. 72
SELECT * FROM employee1
WHERE department = 'IT'
AND salary > 60000
AND age < 35;
-- Find employees from IT OR Finance earning more than 70,000. 73
SELECT * FROM employee1
WHERE department = 'IT'
OR department = 'Finance'
AND salary > 70000;

 
-- 9. BETWEEN
-- Find employees whose salary is between 50,000 and 70,000. 74
SELECT * FROM employee1
WHERE salary BETWEEN 50000 AND 70000;
-- Find employees whose age is between 25 and 30. 75
SELECT * FROM employee1
WHERE age BETWEEN 25 AND 30;
-- Find employees whose salary is between 40,000 and 60,000. 76
SELECT * FROM employee1
WHERE salary BETWEEN 40000 AND 60000;
-- Find employees whose salary is NOT between 50,000 and 70,000. 77
SELECT * FROM employee1
WHERE salary NOT BETWEEN 50000 AND 70000;
-- -- Example:

-- -- SELECT *
-- -- FROM employees
-- -- WHERE salary BETWEEN 50000 AND 70000;
-- -- 10. IN / NOT IN

-- Find employees from IT, HR or Finance. 78
SELECT *
FROM employee1
WHERE department IN ('IT', 'HR', 'Finance');
-- Find employees whose age is 24, 25 or 30. 79
SELECT * FROM employee1
WHERE age IN(24, 25, 30);
-- Find employees whose salary is 50,000, 60,000 or 80,000. 80
SELECT * FROM employee1
WHERE salary IN(50000, 60000, 80000);
-- Find employees not belonging to IT or HR. 81
SELECT * FROM employee1
WHERE department NOT IN ('IT', 'HR')
-- Find employees whose age is not 24, 25 or 30. 82
SELECT * FROM employee1
WHERE age NOT IN(24, 25, 30);
-- -- Example:
-- -- SELECT *
-- -- FROM employees
-- -- WHERE department IN ('IT', 'HR');
-- -- 11. LIKE — Very Important
-- -- Even though you didn't specifically mention LIKE, you should learn it with WHERE.

-- -- Questions:
-- Find employees whose name starts with A. 83
SELECT * FROM employee1
WHERE name LIKE 'A%';
-- Find employees whose name ends with a. 84
SELECT * FROM employee1
WHERE name ILIKE '%A';
-- Find employees whose name contains i. 85
SELECT * FROM employee1
WHERE name LIKE '%I%';
-- Find employees whose name contains ra. 86
SELECT * FROM employee1
WHERE name LIKE '%ra%';
-- Find employees whose name has exactly 5 characters. 87
SELECT * FROM employee1
WHERE name LIKE '_*5';
-- Find employees whose second character is a. 88
SELECT * FROM employee1
WHERE name LIKE '_a%';
-- Find employees whose name starts with P. 89
SELECT * FROM employee1
WHERE name LIKE 'P%';
-- Find employees whose name does not start with A. 90
SELECT * FROM employee1
WHERE name NOT LIKE 'A%';
-- -- Examples:
-- -- WHERE name LIKE 'A%'
-- -- WHERE name LIKE '%a'q
-- -- WHERE name LIKE '%i%'

-- -- 12. NULL — Important
-- Find employees whose department is NULL. 91
-- Find employees whose salary is NULL. 92
-- Find employees whose department is NOT NULL. 93
-- Count employees whose salary is NULL.
-- Find employees where age is NULL.
-- Explain why we cannot use:
-- WHERE salary = NULL
-- What is the correct way to check NULL?
-- Difference between NULL and 0.
-- 13. Aggregate Functions

-- You need to master:

-- COUNT()
-- SUM()
-- AVG()
-- MIN()
-- MAX()

-- Questions:

-- COUNT
-- Count total employees.
-- Count employees in IT.
-- Count employees whose salary is greater than 50,000.
-- Count employees whose age is greater than 25.
-- Count distinct departments.
-- Count employees having non-null salary.
-- SUM
-- Find total salary of all employees.
-- Find total salary paid to IT employees.
-- Find total salary of HR employees.
-- Find total salary of employees earning more than 60,000.
-- AVG
-- Find average salary.
-- Find average salary of IT employees.
-- Find average age.
-- Find average salary of employees older than 25.
-- MIN
-- Find minimum salary.
-- Find minimum age.
-- Find minimum salary in IT.
-- MAX
-- Find maximum salary.
-- Find maximum age.
-- Find maximum salary in HR.
-- 14. GROUP BY — Very Important

-- Assume:

-- employee_id | name  | department | salary
-- 1           | Amit  | IT         | 60000
-- 2           | Rahul | HR         | 50000
-- 3           | Neha  | IT         | 75000
-- 4           | Priya | Finance    | 80000
-- 5           | Ravi  | HR         | 45000
-- Basic
-- Find the number of employees in each department.
-- Find total salary paid by each department.
-- Find average salary of each department.
-- Find maximum salary in each department.
-- Find minimum salary in each department.
-- Find number of employees by age.
-- Find total salary by department.
-- Find average age by department.
-- Intermediate
-- Find departments having more than 2 employees.
-- Find departments where total salary is greater than 100,000.
-- Find departments where average salary is greater than 60,000.
-- Find departments where maximum salary is greater than 70,000.
-- Find departments where minimum salary is less than 50,000.
-- Find the department with the highest average salary.
-- Find the department with the lowest average salary.
-- 15. HAVING

-- This is one of the most important interview topics.

-- Questions
-- Find departments having more than 2 employees.
-- Find departments having at least 2 employees.
-- Find departments where average salary is greater than 60,000.
-- Find departments where total salary is greater than 100,000.
-- Find departments where maximum salary is greater than 70,000.
-- Find departments where minimum salary is greater than 40,000.
-- Find departments where average age is greater than 25.
-- Find departments having total salary between 100,000 and 200,000.
-- Find departments having more than 3 employees and average salary greater than 50,000.
-- Find departments where total salary is greater than 150,000 and employee count is greater than 2.
-- 16. WHERE vs HAVING

-- You should be able to solve these:

-- Find departments having employees whose salary is greater than 50,000.
-- Find departments where employees earning more than 50,000 are more than 2.
-- Find departments whose average salary is greater than 60,000.
-- Find departments having at least 2 employees with salary greater than 50,000.
-- Explain why WHERE cannot normally be used with aggregate conditions like COUNT(*) > 2.
-- Explain the difference between WHERE and HAVING.

-- For example:

-- SELECT department, COUNT(*)
-- FROM employees
-- WHERE salary > 50000
-- GROUP BY department
-- HAVING COUNT(*) > 1;

-- Understand exactly what happens here.

-- 17. JOINS — Most Important Section

-- Create these two tables:

-- employees
-- employee_id | name  | department_id | salary
-- 1           | Amit  | 10             | 60000
-- 2           | Rahul | 20             | 50000
-- 3           | Neha  | 10             | 75000
-- 4           | Priya | 30             | 80000
-- 5           | Ravi  | 40             | 45000
-- departments
-- department_id | department_name
-- 10            | IT
-- 20            | HR
-- 30            | Finance
-- 40            | Marketing
-- 50            | Sales
-- 18. INNER JOIN Questions
-- Display employee name and department name.
-- Display employee name, salary and department name.
-- Find all employees who have a matching department.
-- Find employees working in IT.
-- Find employees working in HR.
-- Display employee name and department name ordered by salary.
-- Find employees earning more than 60,000 along with their department.
-- Find the average salary of each department.
-- Find the number of employees in each department.
-- Find the highest-paid employee in each department.
-- 19. LEFT JOIN Questions
-- Display all employees with their department names.
-- Display all employees even if they don't have a department.
-- Find employees who don't have a matching department.
-- Find departments with no employees.
-- Display employee name, department name and salary.
-- Count employees in each department including departments with zero employees.

-- Very important:

-- SELECT d.department_name, COUNT(e.employee_id)
-- FROM departments d
-- LEFT JOIN employees e
-- ON d.department_id = e.department_id
-- GROUP BY d.department_name;
-- 20. RIGHT JOIN Questions
-- Display all departments and matching employees.
-- Find departments that don't have employees.
-- Count employees for every department.
-- Display all departments even if no employee belongs to them.

-- Also understand why many developers prefer rewriting a RIGHT JOIN as a LEFT JOIN by switching table order.

-- 21. FULL OUTER JOIN

-- If your SQL database supports it:

-- Display all employees and all departments.
-- Find employees without departments.
-- Find departments without employees.
-- Find all matching and non-matching records.
-- 22. JOIN + WHERE Questions
-- Find employees working in IT.
-- Find employees earning more than 60,000 and display their department.
-- Find employees from HR earning more than 45,000.
-- Find employees from IT or Finance.
-- Find employees whose salary is above their department's threshold.
-- 23. JOIN + GROUP BY Questions

-- Very important for interviews.

-- Find employee count in each department.
-- Find total salary by department.
-- Find average salary by department.
-- Find maximum salary by department.
-- Find minimum salary by department.
-- Find department with the highest total salary.
-- Find department with the highest average salary.
-- Find departments having more than 2 employees.
-- Find departments having average salary greater than 60,000.
-- Find departments where total salary exceeds 150,000.
-- 24. JOIN + GROUP BY + HAVING

-- These are interview-level practice questions.

-- Find departments having more than 2 employees.
-- Find departments where average salary is greater than 60,000.
-- Find departments where total salary is greater than 150,000.
-- Find departments having at least 2 employees earning more than 50,000.
-- Find departments where maximum salary is greater than 70,000.
-- Find departments where minimum salary is less than 50,000.
-- Find departments having an average age greater than 25.
-- Find departments with more than 2 employees and average salary above 60,000.
-- 25. Mixed SQL Questions

-- These are the questions I recommend you definitely solve.

-- Level 1 — Basic
-- Display all employees.
-- Display employee names and salaries.
-- Find employees earning more than 50,000.
-- Find employees from IT.
-- Display unique departments.
-- Sort employees by salary descending.
-- Find the highest salary.
-- Find the lowest salary.
-- Find the top 3 highest-paid employees.
-- Count total employees.
-- Level 2 — Intermediate
-- Find employees earning between 50,000 and 70,000.
-- Find employees belonging to IT or HR.
-- Find employees whose name starts with A.
-- Find employees older than 25.
-- Find the average salary.
-- Find total salary.
-- Find maximum salary in IT.
-- Find minimum salary in HR.
-- Count employees in each department.
-- Find average salary for each department.
-- Level 3 — Advanced
-- Find departments having more than 2 employees.
-- Find departments where average salary is greater than 60,000.
-- Find the highest-paid employee.
-- Find the second-highest salary.
-- Find the third-highest salary.
-- Find the department with the highest average salary.
-- Find the department with the highest total salary.
-- Find employees who earn more than the average salary.
-- Find employees who belong to departments having more than 2 employees.
-- Find the highest-paid employee in each department.
