
-- 1.1
CREATE TABLE employee1 (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    age INT
);
INSERT INTO employee1 (employee_id, name, department, salary, age)
VALUES
    (1, 'Amit', 'IT', 60000, 25),
    (2, 'Rahul', 'HR', 50000, 28),
    (3, 'Neha', 'IT', 75000, 30),
    (4, 'Priya', 'Finance', 80000, 32),
    (5, 'Ravi', 'HR', 45000, 24);
INSERT INTO employee1 (employee_id, name, department, salary, age)
VALUES
    (6, 'Kiran', NULL, 55000, 26),
    (7, NULL, 'HR', 65000, 29),
    (8, 'Anjali', 'IT', NULL, 27),
    (9, NULL, NULL, NULL, NULL);

-- 2.1
CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
INSERT INTO department (department_id, department_name)
VALUES
(10, 'IT'),
(20, 'HR'),
(30, 'Finance'),
(40, 'Marketing'),
(50, 'Sales');

INSERT INTO department (department_id, department_name)
VALUES
(60, 'Research'),
(70, 'Support'),
(80, 'Operations'),
(90, NULL);

--2.2
CREATE TABLE employe (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    salary INT
);
INSERT INTO employe (employee_id, name, department_id, salary)
VALUES
(1, 'Amit', 10, 60000),
(2, 'Rahul', 20, 50000),
(3, 'Neha', 10, 75000),
(4, 'Priya', 30, 80000),
(5, 'Ravi', 40, 45000);
INSERT INTO employe (employee_id, name, department_id, salary)
VALUES
(11, 'Kiran', 60, 55000),
(12, 'Sneha', NULL, 65000),
(15, 'Arjun', 70, 48000),
(18, 'Divya', 100, 70000),
(21, 'Manoj', NULL, NULL);