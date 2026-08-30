

                              ---- SELECT ----
 
-- Display all employees.
SELECT * FROM employees;
SELECT * FROM projects;
SELECT * FROM departments;

-- Display only employee name and salary.
SELECT CONCAT(first_name, ' ', last_name) AS name, salary FROM employees;

-- Display unique department names.
SELECT DISTINCT department_name FROM departments;   

SELECT DISTINCT d.department_name
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id; 
	
SELECT DISTINCT e.department_id, d.department_name FROM employees e
JOIN departments d 
ON e.department_id = d.department_id;
/*JOIN department d 
ON e.department_id = d.department_name; */ -- different col_names can not join 

-- Display employees hired after 2022.
SELECT * FROM employees
WHERE joining_date > '2022-12-31';

---- Display employees whose salary is greater than ₹50,000.
SELECT * FROM employees
WHERE salary > 50000;

-- Display employees working in the IT department
SELECT * FROM departments
WHERE department_name = 'IT';

-- Display employee IDs and names
SELECT  employee_id, first_name || ' ' || last_name AS name FROM employees;

-- Display employees whose salary is between ₹30,000 and ₹60,000.
SELECT * FROM employees
WHERE salary BETWEEN 30000 AND 60000;

-- Display employees whose city is Hyderabad.
SELECT * FROM employees
WHERE city = 'Hyderabad';

-- Display employee names in alphabetical order.
SELECT first_name || ' ' || last_name AS name FROM employees
ORDER BY name ASC;

 ---- WHERE ----

-- Find employees older than 30.
SELECT * FROM employees
WHERE age > 30;

-- Find employees younger than 25.
SELECT * FROM employees
WHERE age < 25;

-- Find employees from Bangalore.
SELECT * FROM employees
WHERE city = 'Bangalore';

-- Find employees not from Hyderabad.
SELECT * FROM employees
WHERE city <> 'Hyderabad'; -- <> or !=

-- Find salaries greater than ₹75,000.
SELECT * FROM employees
WHERE salary > 75000;

-- Find salaries less than ₹40,000.
SELECT * FROM employees
WHERE salary < 40000;

-- Find employees hired before 2021.
SELECT * FROM employees
WHERE joining_date < '2021-01-01';

-- Find employees hired after January 1, 2024.
SELECT * FROM employees
WHERE joining_date > '2024-01-01';

-- Find female employees.
SELECT * FROM employees
WHERE gender = 'female';

-- Find employees with more than 5 years of experience.
SELECT * FROM employees
WHERE experience_years > 5;


 ---- ORDER BY ----

-- Sort employees by salary (ascending).
SELECT * FROM employees
ORDER BY salary ASC;

-- Sort employees by salary (descending).
SELECT * FROM employees
ORDER BY salary DESC;

-- Sort by employee name.
SELECT first_name || ' ' || last_name AS name FROM employees
ORDER BY name ASC;

-- Sort by joining date.
SELECT * FROM employees
ORDER BY joining_date ASC;

-- Sort by department and salary.
SELECT d.department_name, e.salary 
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
ORDER BY d.department_name ASC , e.salary ASC;

-- Find the highest-paid employee.
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 1;

-- Find the lowest-paid employee.
SELECT * FROM employees
ORDER BY salary ASC
LIMIT 1;

--Sort employees by age.
SELECT * FROM employees
ORDER BY age;

-- Sort employees by city.
SELECT * FROM employees
ORDER BY city;

--Sort by experience.
SELECT * FROM employees
ORDER BY experience_years; -- no key after clause can be given in defauld order as ASC

   ----LIMIT / TOP---- 

--Display the first 5 employees.
SELECT * FROM employees
LIMIT 5;

--Display the top 10 salaries.
SELECT salary FROM employees
ORDER BY salary DESC LIMIT 10;

--Display the top 3 youngest employees.
SELECT * FROM employees
ORDER BY age ASC LIMIT 3;

--Display the top 5 oldest employees.
SELECT * FROM employees
ORDER BY age DESC LIMIT 5;

--Display the second highest salary.
SELECT * FROM employees
ORDER BY salary DESC LIMIT 1 OFFSET 1;

--Display the third highest salary.
SELECT * FROM employees
ORDER BY salary DESC LIMIT 1 OFFSET 2;

--Display the first employee alphabetically.
SELECT * FROM employees
ORDER BY salary ASC LIMIT 1;

--Display the first 10 employees from the IT department.
SELECT * FROM employees e
JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'IT' LIMIT 10;

-- Display the highest-paid HR employee.
SELECT * FROM employees e
JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'HR' 
ORDER BY e.salary 
LIMIT 1;

-- Display the last 5 employees using ORDER BY.
SELECT * FROM employees
ORDER BY employee_id DESC
LIMIT 5;

      ---- DISTINCT ----

-- Display unique departments.
SELECT DISTINCT * FROM departments;

-- Display unique cities.
SELECT DISTINCT city FROM employees;

-- Display unique designations.
SELECT DISTINCT designation FROM employees;

-- Display unique salaries.
SELECT DISTINCT salary FROM employees;

-- Count distinct departments.
SELECT COUNT(DISTINCT d.department_name) AS total_count_of_departments FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

-- Count distinct cities.
SELECT COUNT(DISTINCT city) FROM employees;

-- Display distinct joining years.
SELECT DISTINCT joining_date FROM employees;

-- Display distinct manager IDs.
SELECT DISTINCT manager_id FROM employees;
SELECT DISTINCT manager_id FROM employees
WHERE manager_id IS NOT NULL;

-- Display unique project names. 
SELECT * FROM projects;
SELECT DISTINCT project_name FROM projects;

-- Display unique employee roles.
SELECT DISTINCT designation FROM employees;

             ---- Aggregate Functions ----

-- Count employees.
SELECT COUNT(*) FROM employees;

-- Calculate total salary.
SELECT COUNT(salary) FROM employees;

-- Find the average salary.
SELECT AVG(salary) FROM employees;

-- Find the maximum salary.
SELECT MAX(salary) FROM employees;

-- Find the minimum salary.
SELECT MIN(salary) FROM employees;

-- Count employees in IT.
SELECT COUNT(*) AS total_empl FROM employees e
    JOIN departments d
    ON e.department_id = d.department_id
WHERE d.department_name = 'IT';

-- Find the highest bonus.
SELECT MAX(bonus) AS highest_bonus FROM employees;

-- Find the lowest bonus.
SELECT MIN(bonus) AS lowest_bonus FROM employees;

-- Calculate the average experience.
SELECT AVG(experience_years) FROM employees;

-- Count distinct departments.
SELECT COUNT(DISTINCT d.department_name) FROM employees e
    JOIN departments d
    ON e.department_id = d.department_id ; 


       ---- GROUP BY ----

-- Count employees in each department.
SELECT d.department_name, COUNT(*) AS employee_count
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Find the average salary per department.
SELECT d.department_name,
       AVG(e.salary) AS average_salary
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Find the maximum salary per department.
SELECT d.department_name,
       MAX(e.salary)
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Find the minimum salary per department.
SELECT d.department_name,
    MIN(e.salary)
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Find the total salary paid per city.
SELECT city,
       SUM(salary) AS total_salary
FROM employees
GROUP BY city;

-- Count employees in each city.
SELECT city,
    COUNT(*) AS emply_count FROM employees
GROUP BY city;

--Count employees by gender.
SELECT COUNT(gender) FROM employees
GROUP BY gender;

--Count employees by designation.
SELECT COUNT(designation) FROM employees
GROUP BY designation;

--Find the average age by department.
SELECT AVG(age) FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name;

--Find the total bonus by department.
SELECT SUM(bonus) FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name;

       -----HAVING-----

--Departments with more than 5 employees.
SELECT d.department_name,
       COUNT(e.employee_id) AS employee_count
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) > 5;

SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;

--Departments with average salary > ₹60,000.
SELECT d.department_name,
      AVG(salary) AS avg_salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
Group by d.department_name
HAVING AVG(salary) > 60000;

--Cities with more than 10 employees.
SELECT city, COUNT(employee_id) FROM employees
Group by city
HAVING COUNT(employee_id) > 10;

--Departments with total salary > ₹5,00,000.
SELECT d.department_name, SUM(salary) FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING SUM(salary) >500000;

--Departments with max salary > ₹1,00,000.
SELECT d.department_name, MAX(salary) FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING MAX(salary) > 100000;

--Departments with minimum salary > ₹40,000.
SELECT d.department_name, MIN(salary) FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING MIN(salary) > 40000;

--Cities with average age < 30.
SELECT city, AVG(age) FROM employees
GROUP BY city
HAVING AVG(age) < 30;

--Departments with exactly 3 employees.
SELECT d.department_name, COUNT(employee_id) FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING COUNT(employee_id) = 3;

--Cities with total bonuses > ₹2,00,000.
SELECT city, SUM(bonus) FROM employees
GROUP BY city
HAVING SUM(bonus) > 200000;

--Departments with average experience > 5 years.
SELECT d.department_name, AVG(experience_years) FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING AVG(experience_years) > 5;

          -----String Functions-----

-- Convert names to uppercase.
SELECT UPPER(first_name),
       UPPER(last_name) FROM employees; 

--Convert names to lowercase.
SELECT LOWER(first_name),
LOWER(last_name) FROM employees;

--Find the length of each employee name.
SELECT LENGTH(CONCAT(first_name,last_name)) FROM employees;

--Display the first three characters of each name.
SELECT LEFT(first_name, 3),
       LEFT(last_name, 3) FROM employees;

--Display the last two characters of each name.
SELECT RIGHT(first_name, 2) FROM employees;

--Replace 'a' with '@' in names.
SELECT REPLACE(first_name, 'a', '@') FROM employees;

--Remove leading spaces.
SELECT LTRIM(first_name) FROM employees;

--Remove trailing spaces.
SELECT RTRIM(first_name) FROM employees;

--Concatenate first and last names.
SELECT CONCAT(first_name, ' ', last_name) FROM employees;

--Reverse employee names.
SELECT REVERSE(first_name) FROM employees;

         -----Date Functions-----

--Display the current date.
SELECT CURRENT_DATE;

--Display the current timestamp.
SELECT CURRENT_TIMESTAMP;

--Find employees hired this year.
SELECT * FROM employees
WHERE EXTRACT(YEAR FROM joining_date) = EXTRACT (YEAR FROM CURRENT_DATE);

--Calculate employee experience.
SELECT employee_id, first_name, EXTRACT(YEAR FROM AGE(CURRENT_DATE, joining_date)) FROM employees;

--Calculate employee age.
SELECT age(CURRENT_DATE) FROM employees;

--Find employees hired last month.
SELECT *
FROM employees
WHERE DATE_TRUNC('month', joining_date) = DATE_TRUNC('month', CURRENT_DATE - INTERVAL '1 month');

--Add 30 days to joining date.
SELECT employee_id,
       joining_date,
       joining_date + INTERVAL '30 days' AS date_after_30_days
FROM employees;

--Find the month of joining.
SELECT employee_id, joining_date, 
       EXTRACT(MONTH FROM joining_date) AS joining_month
FROM employees;

--Find the year of joining.
SELECT employee_id, joining_date,
EXTRACT(YEAR FROM joining_date) AS joining_year
FROM employees;

--Find the weekday of joining.
SELECT employee_id, joining_date,
EXTRACT(DAY FROM joining_date) AS joining_day
FROM employees;

                                  ---CASE Statement----
--Classify salaries as High, Medium or Low.
SELECT employee_id, first_name || ' ' || last_name AS full_name, salary,
    CASE
        WHEN salary > AVG(salary) OVER () THEN 'High'
        WHEN salary = AVG(salary) OVER () THEN 'Medium'
        ELSE 'Low'
    END AS salary_level
FROM employees;
 SELECT * FROM employees;
 
--Classify employees as Junior, Mid-Level or Senior.
SELECT employee_id, first_name || ' ' || last_name AS full_name, experience_years,
    CASE
        WHEN experience_years > AVG(experience_years) OVER() THEN 'Senior'
        WHEN experience_years = MIN(experience_years) OVER() THEN 'Mid-Level'
        ELSE 'Junior'
    END AS experience_level
FROM employees;

--Display Pass or Fail based on marks.
SELECT 

--Categorize employees by age.
SELECT *,
CASE 
	WHEN age BETWEEN 20 AND 29 THEN '20-29'
	WHEN age BETWEEN 30 AND 39 THEN '30-39'
	WHEN age BETWEEN 40 AND 49 THEN '40-49'
	WHEN age BETWEEN 0 AND 19 THEN 'Not eligible'
	ELSE 'Senior'
END AS Categorized
FROM employees 

--Display tax slabs based on salary.

--Categorize attendance.

--Display bonus eligibility.
SELECT * FROM employees;
SELECT * FROM projects;
SELECT * FROM departments;

SELECT employee_id, first_name, salary, bonus,
    CASE
        WHEN bonus > 0 THEN 'Eligible'
        ELSE 'Not Eligible'
    END AS bonus_eligibility
FROM employees;

--Display performance ratings.
--Convert gender text to codes.
SELECT 	employee_id, first_name || ' ' || last_name, gender,
	CASE 
	     WHEN gender = 'Male' THEN 'M'
	     WHEN gender = 'Female' THEN 'F'
	 ELSE 'TG'
END AS gender_code
FROM employees;
--Display department abbreviations.
SELECT department_name, *,
    CASE
        WHEN department_name = 'IT' THEN 'IT'
        WHEN department_name = 'HR' THEN 'HR'
        WHEN department_name = 'Finance' THEN 'FIN'
        WHEN department_name = 'Marketing' THEN 'MKT'
        WHEN department_name = 'Operations' THEN 'OPS'
        WHEN department_name = 'Research & Development' THEN 'R&D'
        ELSE 'null'
   END AS department_abbreviation
FROM departments;

                                            --- INNER JOIN --- 
SELECT * FROM employees;
SELECT * FROM projects;
SELECT * FROM departments;
-- Employee with department.
SELECT 
    e.first_name,
    d.department_name
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id;
-- Employee with salary.
SELECT first_name, salary
FROM employees;
SELECT e.first_name, e.salary
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id;
-- Customers with orders.
 
-- Products with categories.
SELECT 
-- Students with courses.
-- Employees with projects.
-- Orders with customer cities.
-- Books with authors.
-- Payments with invoices.
-- Employees with manager names.

                                               --- Subqueries---
SELECT * FROM employees;
SELECT * FROM projects;
SELECT * FROM departments;
-- 1. Highest salary.
SELECT salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);
-- 2. Second highest salary.
SELECT MAX(salary)
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);
-- 3. Employees above average salary.
SELECT salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
-- 4. Employees in largest department.
SELECT e.*, d.department_name
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
WHERE e.department_id = (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
);
-- 5. Departments without employees.
SELECT *
FROM departments
WHERE department_id NOT IN (
    SELECT department_id
    FROM employees
);
-- 6. Products never sold.

-- 7. Customers without orders.

-- 8. Employees hired after managers.
-- 9. Minimum salary.
SELECT salary FROM e
-- 10. Department with highest average salary.