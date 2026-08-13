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

CREATE TABLE department1 (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
INSERT INTO department1 (department_id, department_name)
VALUES
    (10, 'IT'),
    (20, 'HR'),
    (30, 'Finance'),
    (40, 'Marketing'),
    (50, 'Sales'),
    (60, NULL),
    (70, 'Operations'),
    (80, NULL);