

CREATE TABLE employees1 (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone_number VARCHAR(50),
    hire_date DATE NOT NULL,
    job_id VARCHAR(30) NOT NULL,
    salary DECIMAL(10, 2),
    commission_pct DECIMAL(4, 2),
    manager_id INT,
    department_id INT
);

INSERT INTO employees1 (
    employee_id, first_name, last_name, email, phone_number, 
    hire_date, job_id, salary, commission_pct, manager_id, department_id
) VALUES
(100, 'Steven', 'King', 'SKING', '515.123.4567', '2003-06-17', 'AD_PRES', 24000.00, 0.00, 0, 90),
(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '2005-09-21', 'AD_VP', 17000.00, 0.00, 100, 90),
(102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '2001-01-13', 'AD_VP', 17000.00, 0.00, 100, 90),
(103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '2006-01-03', 'IT_PROG', 9000.00, 0.00, 102, 60),
(104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '2007-05-21', 'IT_PROG', 6000.00, 0.00, 103, 60),
(105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', '2005-06-25', 'IT_PROG', 4800.00, 0.00, 103, 60),
(106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '2006-02-05', 'IT_PROG', 4800.00, 0.00, 103, 60),
(107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '2007-02-07', 'IT_PROG', 4200.00, 0.00, 103, 60),
(108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '2002-08-17', 'FI_MGR', 12008.00, 0.00, 101, 100),
(109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '2002-08-16', 'FI_ACCOUNT', 9000.00, 0.00, 108, 100),
(110, 'John', 'Chen', 'JCHEN', '515.124.4269', '2005-09-28', 'FI_ACCOUNT', 8200.00, 0.00, 108, 100),
(111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '2005-09-30', 'FI_ACCOUNT', 7700.00, 0.00, 108, 100),
(112, 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '2006-03-07', 'FI_ACCOUNT', 7800.00, 0.00, 108, 100),
(113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', '2007-12-07', 'FI_ACCOUNT', 6900.00, 0.00, 108, 100),
(114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '2002-12-07', 'PU_MAN', 11000.00, 0.00, 100, 30),
(115, 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '2003-05-18', 'PU_CLERK', 3100.00, 0.00, 114, 30),
(116, 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', '2005-12-24', 'PU_CLERK', 2900.00, 0.00, 114, 30),
(117, 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', '2005-07-24', 'PU_CLERK', 2800.00, 0.00, 114, 30),
(118, 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', '2006-11-15', 'PU_CLERK', 2600.00, 0.00, 114, 30),
(119, 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', '2007-08-10', 'PU_CLERK', 2500.00, 0.00, 114, 30),
(120, 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', '2004-07-18', 'ST_MAN', 8000.00, 0.00, 100, 50),
(121, 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', '2005-04-10', 'ST_MAN', 8200.00, 0.00, 100, 50),
(122, 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', '2003-05-01', 'ST_MAN', 7900.00, 0.00, 100, 50),
(123, 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', '2005-10-10', 'ST_MAN', 6500.00, 0.00, 100, 50),
(124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '2007-11-16', 'ST_MAN', 5800.00, 0.00, 100, 50),
(125, 'Julia', 'Nayer', 'JNAYER', '650.124.1214', '2005-07-16', 'ST_CLERK', 3200.00, 0.00, 120, 50),
(126, 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', '2006-09-28', 'ST_CLERK', 2700.00, 0.00, 120, 50),
(127, 'James', 'Landry', 'JLANDRY', '650.124.1334', '2007-01-14', 'ST_CLERK', 2400.00, 0.00, 120, 50),
(128, 'Steven', 'Markle', 'SMARKLE', '650.124.1434', '2008-03-08', 'ST_CLERK', 2200.00, 0.00, 120, 50),
(129, 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', '2005-08-20', 'ST_CLERK', 3300.00, 0.00, 121, 50),
(130, 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', '2005-10-30', 'ST_CLERK', 2800.00, 0.00, 121, 50),
(131, 'James', 'Marlow', 'JAMRLOW', '650.124.7234', '2005-02-16', 'ST_CLERK', 2500.00, 0.00, 121, 50),
(132, 'TJ', 'Olson', 'TJOLSON', '650.124.8234', '2007-04-10', 'ST_CLERK', 2100.00, 0.00, 121, 50),
(133, 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', '2004-06-14', 'ST_CLERK', 3300.00, 0.00, 122, 50),
(134, 'Michael', 'Rogers', 'MROGERS', '650.127.1834', '2006-08-26', 'ST_CLERK', 2900.00, 0.00, 122, 50),
(135, 'Ki', 'Gee', 'KGEE', '650.127.1734', '2007-12-12', 'ST_CLERK', 2400.00, 0.00, 122, 50),
(136, 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', '2008-02-06', 'ST_CLERK', 2200.00, 0.00, 122, 50),
(137, 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', '2003-07-14', 'ST_CLERK', 3600.00, 0.00, 123, 50),
(138, 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', '2005-10-26', 'ST_CLERK', 3200.00, 0.00, 123, 50),
(139, 'John', 'Seo', 'JSEO', '650.121.2019', '2006-02-12', 'ST_CLERK', 2700.00, 0.00, 123, 50),
(140, 'Joshua', 'Patel', 'JPATEL', '650.121.1834', '2006-04-06', 'ST_CLERK', 2500.00, 0.00, 123, 50),
(141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '2003-10-17', 'ST_CLERK', 3500.00, 0.00, 124, 50),
(142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '2005-01-29', 'ST_CLERK', 3100.00, 0.00, 124, 50),
(143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', '2006-03-15', 'ST_CLERK', 2600.00, 0.00, 124, 50),
(144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '2006-07-09', 'ST_CLERK', 2500.00, 0.00, 124, 50),
(145, 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', '2004-10-01', 'SA_MAN', 14000.00, 0.40, 100, 80),
(146, 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', '2005-01-05', 'SA_MAN', 13500.00, 0.30, 100, 80),
(147, 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', '2005-03-10', 'SA_MAN', 12000.00, 0.30, 100, 80),
(148, 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', '2007-10-15', 'SA_MAN', 11000.00, 0.30, 100, 80),
(149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '2008-01-29', 'SA_MAN', 10500.00, 0.20, 100, 80),
(150, 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', '2005-01-30', 'SA_REP', 10000.00, 0.30, 145, 80),
(151, 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', '2005-03-24', 'SA_REP', 9500.00, 0.25, 145, 80),
(152, 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', '2005-08-20', 'SA_REP', 9000.00, 0.25, 145, 80),
(153, 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', '2006-03-30', 'SA_REP', 8000.00, 0.20, 145, 80),
(154, 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', '2006-12-09', 'SA_REP', 7500.00, 0.20, 145, 80),
(155, 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', '2007-11-23', 'SA_REP', 7000.00, 0.15, 145, 80),
(156, 'Janette', 'King', 'JKING', '011.44.1345.429268', '2004-01-30', 'SA_REP', 10000.00, 0.35, 146, 80),
(157, 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', '2004-03-04', 'SA_REP', 9500.00, 0.35, 146, 80),
(158, 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', '2004-08-01', 'SA_REP', 9000.00, 0.35, 146, 80),
(159, 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', '2005-03-10', 'SA_REP', 8000.00, 0.30, 146, 80),
(160, 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', '2005-12-15', 'SA_REP', 7500.00, 0.30, 146, 80),
(161, 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', '2006-11-03', 'SA_REP', 7000.00, 0.25, 146, 80),
(162, 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', '2005-11-11', 'SA_REP', 10500.00, 0.25, 147, 80),
(163, 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', '2007-03-19', 'SA_REP', 9500.00, 0.15, 147, 80),
(164, 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', '2008-01-24', 'SA_REP', 7200.00, 0.10, 147, 80),
(165, 'David', 'Lee', 'DLEE', '011.44.1346.529268', '2008-02-23', 'SA_REP', 6800.00, 0.10, 147, 80),
(166, 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', '2008-03-24', 'SA_REP', 6400.00, 0.10, 147, 80),
(167, 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', '2008-04-21', 'SA_REP', 6200.00, 0.10, 147, 80),
(168, 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', '2005-03-11', 'SA_REP', 11500.00, 0.25, 148, 80),
(169, 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', '2006-03-23', 'SA_REP', 10000.00, 0.20, 148, 80),
(170, 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', '2006-01-24', 'SA_REP', 9600.00, 0.20, 148, 80),
(171, 'William', 'Smith', 'WSMITH', '011.44.1343.629268', '2007-02-23', 'SA_REP', 7400.00, 0.15, 148, 80),
(172, 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', '2007-03-24', 'SA_REP', 7300.00, 0.15, 148, 80),
(173, 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', '2008-04-21', 'SA_REP', 6100.00, 0.10, 148, 80),
(174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '2004-05-11', 'SA_REP', 11000.00, 0.30, 149, 80),
(175, 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', '2005-03-19', 'SA_REP', 8800.00, 0.25, 149, 80),
(176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '2006-03-24', 'SA_REP', 8600.00, 0.20, 149, 80),
(177, 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', '2006-04-23', 'SA_REP', 8400.00, 0.20, 149, 80),
(178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '2007-05-24', 'SA_REP', 7000.00, 0.15, 149, 0),
(179, 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', '2008-01-04', 'SA_REP', 6200.00, 0.10, 149, 80),
(180, 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', '2006-01-24', 'SH_CLERK', 3200.00, 0.00, 120, 50),
(181, 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', '2006-02-23', 'SH_CLERK', 3100.00, 0.00, 120, 50),
(182, 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', '2007-06-21', 'SH_CLERK', 2500.00, 0.00, 120, 50),
(183, 'Girard', 'Geoni', 'GGEONI', '650.507.9879', '2008-02-03', 'SH_CLERK', 2800.00, 0.00, 120, 50),
(184, 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', '2004-01-27', 'SH_CLERK', 4200.00, 0.00, 121, 50),
(185, 'Alexis', 'Bull', 'ABULL', '650.509.2876', '2005-02-20', 'SH_CLERK', 4100.00, 0.00, 121, 50),
(186, 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', '2006-06-24', 'SH_CLERK', 3400.00, 0.00, 121, 50),
(187, 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', '2007-02-07', 'SH_CLERK', 3000.00, 0.00, 121, 50),
(188, 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', '2005-06-14', 'SH_CLERK', 3800.00, 0.00, 122, 50),
(189, 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', '2005-08-13', 'SH_CLERK', 3600.00, 0.00, 122, 50),
(190, 'Timothy', 'Gates', 'TGATES', '650.505.3876', '2006-07-11', 'SH_CLERK', 2900.00, 0.00, 122, 50),
(191, 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', '2007-12-19', 'SH_CLERK', 2500.00, 0.00, 122, 50),
(192, 'Sarah', 'Bell', 'SBELL', '650.501.1876', '2004-02-04', 'SH_CLERK', 4000.00, 0.00, 123, 50),
(193, 'Britney', 'Everett', 'BEVERETT', '650.501.2876', '2005-03-03', 'SH_CLERK', 3900.00, 0.00, 123, 50),
(194, 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', '2006-07-01', 'SH_CLERK', 3200.00, 0.00, 123, 50),
(195, 'Vance', 'Jones', 'VJONES', '650.501.4876', '2007-03-17', 'SH_CLERK', 2800.00, 0.00, 123, 50),
(196, 'Alana', 'Walsh', 'AWALSH', '650.507.9811', '2006-04-24', 'SH_CLERK', 3100.00, 0.00, 124, 50),
(197, 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', '2006-05-23', 'SH_CLERK', 3000.00, 0.00, 124, 50),
(198, 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', '2007-06-21', 'SH_CLERK', 2600.00, 0.00, 124, 50),
(199, 'Douglas', 'Grant', 'DGRANT', '650.507.9844', '2008-01-13', 'SH_CLERK', 2600.00, 0.00, 124, 50),
(200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '2003-09-17', 'AD_ASST', 4400.00, 0.00, 101, 10),
(201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '2004-02-17', 'MK_MAN', 13000.00, 0.00, 100, 20),
(202, 'Pat', 'Fay', 'PFAY', '603.123.6666', '2005-08-17', 'MK_REP', 6000.00, 0.00, 201, 20),
(203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', '2002-06-07', 'HR_REP', 6500.00, 0.00, 101, 40),
(204, 'Hermann', 'Baer', 'HBAER', '515.123.8888', '2002-06-07', 'PR_REP', 10000.00, 0.00, 101, 70),
(205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '2002-06-07', 'AC_MGR', 12008.00, 0.00, 101, 110),
(206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', '2002-06-07', 'AC_ACCOUNT', 8300.00, 0.00, 205, 110);

CREATE TABLE departments1 (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    manager_id INT,
    location_id INT NOT NULL
);
INSERT INTO departments1 (department_id, department_name, manager_id, location_id) VALUES
(10, 'Administration', 200, 1700),
(20, 'Marketing', 201, 1800),
(30, 'Purchasing', 114, 1700),
(40, 'Human Resources', 203, 2400),
(50, 'Shipping', 121, 1500),
(60, 'IT', 103, 1400),
(70, 'Public Relations', 204, 2700),
(80, 'Sales', 145, 2500),
(90, 'Executive', 100, 1700),
(100, 'Finance', 108, 1700),
(110, 'Accounting', 205, 1700),
(120, 'Treasury', 0, 1700),
(130, 'Corporate Tax', 0, 1700),
(140, 'Control And Credit', 0, 1700),
(150, 'Shareholder Services', 0, 1700),
(160, 'Benefits', 0, 1700),
(170, 'Manufacturing', 0, 1700),
(180, 'Construction', 0, 1700),
(190, 'Contracting', 0, 1700),
(200, 'Operations', 0, 1700),
(210, 'IT Support', 0, 1700),
(220, 'NOC', 0, 1700),
(230, 'IT Helpdesk', 0, 1700),
(240, 'Government Sales', 0, 1700),
(250, 'Retail Sales', 0, 1700),
(260, 'Recruiting', 0, 1700),
(270, 'Payroll', 0, 1700);





--From the following table, write a SQL query to find those employees who receive a higher salary than the employee with ID 163. Return first name, last name.
SELECT first_name, last_name
FROM employees1
WHERE salary > (
    SELECT salary
    FROM employees1
    WHERE employee_id = 163
);
--From the following table, write a SQL query to find out which employees have the same designation as the employee whose ID is 169. Return first name, last name, department ID and job ID.
SELECT first_name, last_name, salary, department_id, job_id
FROM employees1
WHERE job_id = (
    SELECT job_id
    FROM employees1
    WHERE employee_id = 169
);
--From the following table, write a SQL query to find those employees whose salary matches the lowest salary of any of the departments. Return first name, last name and department ID.
SELECT first_name, last_name, department_id
FROM employees1
WHERE (department_id, salary) IN (
    SELECT department_id, MIN(salary)
    FROM employees1
    GROUP BY department_id
);
--From the following table, write a SQL query to find those employees who earn more than the average salary. Return employee ID, first name, last name.
SELECT employee_id, first_name, last_name
FROM employees1
WHERE salary > (
    SELECT AVG(salary)
    FROM employees1
);
--From the following table, write a SQL query to find those employees who report to that manager whose first name is ‘Payam’. Return first name, last name, employee ID and salary
SELECT first_name, last_name, employee_id, salary 
FROM employees1
WHERE manager_id = (
	SELECT employee_id FROM employees1
	WHERE first_name = 'Payam');
--From the following tables, write a SQL query to find all those employees who work in the Finance department. Return department ID, name (first), job ID and department name.
SELECT e.department_id, e.first_name, e.job_id, d.department_name
FROM employees1 e
JOIN departments1 d ON e.department_id = d.department_id
WHERE e.department_id = (
    SELECT department_id
    FROM departments1
    WHERE department_name = 'Finance'
); 
--From the following table, write a SQL query to find the employee whose salary is 3000 and reporting person’s ID is 121. Return all fields.
SELECT *
FROM employees1
WHERE salary = 3000
  AND manager_id = (
      SELECT employee_id
      FROM employees1
      WHERE employee_id = 121
  );
--From the following table, write a SQL query to find those employees whose ID matches any of the numbers 134, 159 and 183. Return all the fields. 
SELECT *
FROM employees1
WHERE employee_id IN (
    SELECT employee_id
    FROM employees1
    WHERE employee_id IN (134, 159, 183)
);
--From the following tables, write a SQL query to find those employees who work in the same department as ‘Clara’. Exclude all those records where first name is ‘Clara’. Return first name, last name and hire date
SELECT first_name, last_name, hire_date
FROM employees1
WHERE department_id = (
    SELECT department_id
    FROM employees1
    WHERE first_name = 'Clara'
)
AND first_name != 'Clara';
--From the following tables, write a SQL query to find those employees who work in a department where the employee’s first name contains the letter 'T'. Return employee ID, first name and last name
SELECT employee_id, first_name, last_name
FROM employees1
WHERE department_id IN (
    SELECT department_id
    FROM employees1
    WHERE first_name LIKE '%T%'
);
--From the following tables, write a SQL query to find those employees who earn more than the average salary and work in the same department as an employee whose first name contains the letter 'J'. Return employee ID, first name and salary.
SELECT employee_id, first_name, salary
FROM employees1
WHERE salary > (
    SELECT AVG(salary)
    FROM employees1
)
AND department_id IN (
    SELECT department_id
    FROM employees1
    WHERE first_name ILIKE '%J%'
);
--From the following table, write a SQL query to find those employees whose department is located at ‘Toronto’. Return first name, last name, employee ID, job ID.
SELECT e.first_name, e.last_name, e.employee_id, e.job_id
FROM employees1 e
JOIN departments1 d ON e.department_id = d.department_id
WHERE d.location_id = (
    SELECT location_id
    FROM locations
    WHERE city = 'Toronto'
);
--From the following table, write a SQL query to find those employees whose salary is lower than that of employees whose job title is ‘MK_MAN’. Return employee ID, first name, last name, job ID.
SELECT employee_id, first_name, last_name, job_id
FROM employees1
WHERE salary < (
    SELECT MAX(salary)
    FROM employees1
    WHERE job_id = 'MK_MAN'
);
--From the following table, write a SQL query to find those employees whose salary is lower than that of employees whose job title is "MK_MAN". Exclude employees of Job title ‘MK_MAN’. Return employee ID, first name, last name, job ID. 
SELECT employee_id, first_name, last_name, job_id
FROM employees1
WHERE salary < (
    SELECT MAX(salary)
    FROM employees1
    WHERE job_id = 'MK_MAN'
)
AND job_id != 'MK_MAN';
--From the following table, write a SQL query to find those employees whose salary exceeds the salary of all those employees whose job title is "PU_MAN". Exclude job title ‘PU_MAN’. Return employee ID, first name, last name, job ID.
SELECT employee_id, first_name, last_name, job_id
FROM employees1
WHERE salary > (
    SELECT MAX(salary)
    FROM employees1
    WHERE job_id = 'PU_MAN'
)
AND job_id != 'PU_MAN';
--From the following table, write a SQL query to find those employees whose salaries are higher than the average for all departments. Return employee ID, first name, last name, job ID.
SELECT employee_id, first_name, last_name, job_id
FROM employees1
WHERE salary > (
    SELECT AVG(salary)
    FROM employees1
);
-- 21. From the following table, write a SQL query to check whether there are any employees with salaries exceeding 3700. Return first name, last name and department ID.
SELECT first_name, last_name, department_id
FROM employees1
WHERE employee_id IN (
    SELECT employee_id
    FROM employees1
    WHERE salary > 3700
);
-- 22. From the following table, write a SQL query to calculate total salary of the departments where at least one employee works. Return department ID, total salary.
SELECT department_id, SUM(salary) AS total_amt
FROM employees1
WHERE department_id IN (
    SELECT department_id FROM departments1
)
GROUP BY department_id;
-- 23. Write a query to display the employee id, name (first name and last name) and the job id column with a modified title SALESMAN for those employees whose job title is ST_MAN and DEVELOPER for whose job title is IT_PROG.
SELECT employee_id, first_name, last_name,
       CASE
           WHEN job_id = 'ST_MAN' THEN 'SALESMAN'
           WHEN job_id = 'IT_PROG' THEN 'DEVELOPER'
           ELSE job_id
       END AS designation
FROM employees1;
-- 24. Write a query to display the employee id, name (first name and last name), salary and the SalaryStatus column with a title HIGH and LOW respectively for those employees whose salary is more than and less than the average salary of all employees.
SELECT employee_id, first_name, last_name, salary,
       CASE
           WHEN salary > (SELECT AVG(salary) FROM employees1) THEN 'HIGH'
           ELSE 'LOW'
       END AS salarystatus
FROM employees1;
-- 25. Write a query to display the employee id, name (first name and last name), SalaryDrawn, AvgCompare (salary - the average salary of all employees) and the SalaryStatus column with a title HIGH and LOW respectively for those employees whose salary is more than and less than the average salary of all employees.
SELECT employee_id, first_name, last_name, salary AS salarydrawn,
       salary - (SELECT AVG(salary) FROM employees1) AS avgcompare,
       CASE
           WHEN salary > (SELECT AVG(salary) FROM employees1) THEN 'HIGH'
           ELSE 'LOW'
       END AS salarystatus
FROM employees1;
-- 26. From the following table, write a SQL query to find all those departments where at least one employee is employed. Return department name.
SELECT department_name
FROM departments1 d
WHERE EXISTS (
    SELECT 1
    FROM employees1 e
    WHERE e.department_id = d.department_id
);
-- 27. From the following tables, write a SQL query to find employees who work in departments located in the United Kingdom. Return first name.
SELECT first_name
FROM employees1
WHERE department_id IN (
    SELECT department_id
    FROM departments1
    WHERE location_id = 2400
);
-- 28. From the following table, write a SQL query to find out which employees are earning more than the average salary and who work in any of the IT departments. Return last name.
SELECT last_name
FROM employees1
WHERE salary > (SELECT AVG(salary) FROM employees1)
  AND department_id IN (
      SELECT department_id FROM departments1 WHERE department_name = 'IT'
  );
-- 29. From the following table, write a SQL query to find all those employees who earn more than an employee whose last name is 'Ozer'. Sort the result in ascending order by last name. Return first name, last name and salary.
SELECT first_name, last_name, salary
FROM employees1
WHERE salary > (SELECT salary FROM employees1 WHERE last_name = 'Ozer')
ORDER BY last_name ASC;
-- 30. From the following tables, write a SQL query find the employees who report to a manager based in the United States. Return first name, last name.
SELECT e.first_name, e.last_name
FROM employees1 e
JOIN departments1 d
    ON d.department_id = (
        SELECT m.department_id
        FROM employees1 m
        WHERE m.employee_id = e.manager_id
    )
WHERE d.location_id IN (
    SELECT location_id
    FROM locations
    WHERE country_id = 'US'
);

SELECT * FROM employees1;
SELECT * FROM departments1;

-----------------------------------------------------------------------------------------
CREATE TABLE employees2 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    manager_id INT,
    city VARCHAR(50),
    FOREIGN KEY (manager_id) REFERENCES employees2(emp_id)
);
CREATE TABLE customers2 (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);
CREATE TABLE orders2 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
-- Insert into employees2
INSERT INTO employees2 (emp_id, emp_name, department, salary, manager_id, city) VALUES
(101, 'Ravi', 'IT', 70000.00, 105, 'Hyderabad'),
(102, 'Priya', 'HR', 60000.00, 106, 'Chennai'),
(103, 'Arjun', 'IT', 90000.00, 105, 'Bangalore'),
(104, 'Sneha', 'Finance', 80000.00, 107, 'Hyderabad'),
(105, 'Kiran', 'IT', 120000.00, NULL, 'Hyderabad'),
(106, 'Rahul', 'HR', 95000.00, NULL, 'Chennai'),
(107, 'Anjali', 'Finance', 110000.00, NULL, 'Mumbai'),
(108, 'Vijay', 'Sales', 75000.00, 109, 'Pune'),
(109, 'Meena', 'Sales', 105000.00, NULL, 'Pune'),
(110, 'Suresh', 'IT', 85000.00, 105, 'Chennai');
-- Insert into customers2
INSERT INTO customers2 (customer_id, customer_name, city) VALUES
(201, 'Amit', 'Hyderabad'),
(202, 'Neha', 'Chennai'),
(203, 'Rohit', 'Bangalore'),
(204, 'Divya', 'Mumbai'),
(205, 'Pooja', 'Hyderabad'),
(206, 'Raj', 'Delhi'),
(207, 'Swathi', 'Pune'),
(208, 'Naveen', 'Chennai');
-- Insert into orders2
INSERT INTO orders2 (order_id, customer_id, order_date, amount, status) VALUES
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
DROP TABLE IF EXISTS orders2;
CREATE TABLE orders2 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers2(customer_id)  -- fixed here
);











-- PART 1 — VIEW
-- 1. Create a view called it_employees that displays only employees from the IT department.
CREATE VIEW it_employees AS
SELECT emp_id, emp_name, department, salary, manager_id, city
FROM employees2
WHERE department = 'IT';
-- 2. Create a view called employee_basic_details containing only emp_id, emp_name, department, and city.
CREATE VIEW employee_basic_details AS
SELECT emp_id, emp_name, department, city
FROM employees2;
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
WITH total_compl_order_amount AS (
	SELECT SUM
)
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



