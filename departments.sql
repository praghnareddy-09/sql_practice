SELECT * FROM 	departments;
ALTER TABLE departments
ALTER COLUMN dept_id TYPE VARCHAR(20);
ALTER TABLE departments
ALTER COLUMN dept_id TYPE INT;
ALTER TABLE departments
ALTER COLUMN dept_id TYPE INT
USING dept_id::INT;
INSERT INTO departments (dept_id, dept_name, location)
VALUES (1, 'it', 'hyd'),
       (2, 'development', 'bengl'),
	   (3, 'health', 'odi'),
	   (4, 'data_analytics', 'dlh');


-- Write a query to create the Departments table with dept_id as the primary key.
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL,
    location VARCHAR(50)
);

