-- change the timezone of a user iin all seesions
-- ALTER USER postgres TIMEZONE TO 'UTC'; 

/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT * FROM employees
WHERE AGE(birth_date) > '60' ;

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

SELECT count( emp_no ) FROM employees
WHERE EXTRACT (
MONTH FROM hire_date) = 02;



/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

SELECT count( emp_no ) AS "employees born in november" FROM employees
WHERE EXTRACT(MONTH FROM birth_date) = 11;

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

SELECT MAX(AGE(birth_date))FROM employees;

/*
* DB: Store
* Table: orders
* Question: How many orders were made in february 2004?
*/

SELECT COUNT(orderid)
FROM orders
WHERE DATE_TRUNC('month', orderdate) = date '2004-02-01';
