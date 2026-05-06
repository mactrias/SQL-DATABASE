--- Ejercicio de concat.


SELECT CONCAT(emp_no, ' is a ',title) AS "Employee title" FROM titles;

SELECT emp_no, CONCAT(first_name, ' ', last_name ) AS "Nombre Completo", birth_date FROM employees
