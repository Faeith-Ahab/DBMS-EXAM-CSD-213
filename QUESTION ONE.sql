--SECTION A qn1

--CREATE TABLE employees(
--id INT PRIMARY KEY,
--name VARCHAR(255),
--salary DECIMAL(10,2),
--department_id INT,
--hire_date DATE);

--CREATE TABLE departments (
--id INT PRIMARY KEY,
--name VARCHAR(255));

--INSERT INTO departments (id,name) 
--VALUES (1, 'Engineering');

--INSERT INTO departments (id,name) 
--VALUES (2, 'Sales');

--INSERT INTO departments (id,name) 
--VALUES (3, 'Marketing');

--INSERT INTO departments (id,name) 
--VALUES (4, 'HR');

--INSERT INTO employees (id, name, salary, department_id, hire_date)
--VALUES (1, 'Alice', 60000.00, 1, '2020-01-01');

--INSERT INTO employees (id, name, salary, department_id, hire_date)
--VALUES (2, 'Bob', 70000.00, 1, '2020-01-15');

--INSERT INTO employees (id, name, salary, department_id, hire_date)
--VALUES (3, 'Charlie', 80000.00, 2, '2020-02-01');

--INSERT INTO employees (id, name, salary, department_id, hire_date)
--VALUES (4, 'Dave', 90000.00, 3, '2020-02-15');

--INSERT INTO employees (id, name, salary, department_id, hire_date)
--VALUES (5, 'Eve', 100000.00, 4, '2020-03-01');


--SELECT * FROM departments;

--SELECT * FROM employees;


--Name and salary of highest paid employee in each department

--SELECT dep.name AS department_name, emp.name AS employee_name, emp.salary
--FROM (
--    SELECT department_id, MAX(salary) AS max_salary
--    FROM employees
--    GROUP BY department_id
--) AS max_sal
--JOIN employees AS emp ON max_sal.department_id = emp.department_id AND max_sal.max_salary = emp.salary
--JOIN departments AS dep ON emp.department_id = dep.id;
	


--Name and hire date of oldest employee in each department

--SELECT dep.name AS department_name, emp.name AS employee_name, emp.salary
--FROM departments dep
--JOIN employees emp ON dep.id = emp.department_id
--JOIN (
--    SELECT department_id, MIN(hire_date) AS min_hire_date
--    FROM employees
--    GROUP BY department_id
--) AS min_dates ON emp.department_id = min_dates.department_id AND emp.hire_date = min_dates.min_hire_date;



--Name and salary of employess whose salary is greater than average salary in their department

SELECT dep.name AS department_name, emp.name AS employee_name, emp.salary
FROM employees emp
JOIN (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) AS dept_avg ON emp.department_id = dept_avg.department_id
JOIN departments dep ON emp.department_id = dep.id
WHERE emp.salary > dept_avg.avg_salary;




