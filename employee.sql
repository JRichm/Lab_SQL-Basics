-- PROBLEM ONE          List all employee first and last names only that live in Calgary.
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';


-- PROBLEM TWO          Find the birthdate for the youngest employee.
SELECT MAX(birth_date) FROM employee;


-- PROBLEM THREE        Find the birthdate for the oldest employee.
SELECT MIN(birth_date) FROM employee;


-- PROBLEM FOUR         Find everyone that reports to Nancy Edwards (use the ReportsTo column). * You will need to query the employee table to find the id for Nancy Edwards
SELECT * FROM employees WHERE ReportsTo = (
    SELECT EmployeeID FROM employees WHERE first_name = 'Nancy' AND last_name = 'Edwards'
);


-- PROBLEM FIVE         Count how many people live in Lethbridge.
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';