/* filter data */

SELECT CONCAT(first_name,' ', last_name) AS "mujeres"
FROM employees
WHERE gender = 'F';