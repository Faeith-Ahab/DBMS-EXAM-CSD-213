--CREATE TABLE employees_table(
--	id INT PRIMARY KEY,
--	name VARCHAR(50),
--	age INT,
--	address VARCHAR(50)
--);

--INSERT INTO employees_table (id, name, age, address) 
--VALUES
--(1001, 'Rohan', 26, 'Dehli'),
--(1002, 'Ankit', 30, 'Gurgaon' ),
--(1003, 'Gaurav', 27, 'Mumbai'),
--(1004, 'Raja', 32, 'Nagpur');

--id as 1004
--SELECT * FROM employees_table WHERE id = 1004;


--display all records of the table employees

--SELECT * FROM employees;

--display all records of employees whose name starts with character R
--SELECT * FROM employees_table WHERE name LIKE 'R%';


--Display id, age and name of employees with their age in ascending order

--SELECT id, age, name FROM employees_table ORDER BY age ASC;


----Display id, age and name of employees with their age descending order

--SELECT id, age, name FROM employees_table ORDER BY age DESC;

--selecting diferent adresses of employess using the sql select distict command


SELECT DISTINCT address FROM employees_table;








