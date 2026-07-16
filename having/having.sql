
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/

SELECT e.emp_no,e.hire_date, count(t.title) AS "titulos"
FROM employees AS e
INNER JOIN titles AS t ON e.emp_no = t.emp_no
WHERE EXTRACT (YEAR FROM e.hire_date) > 1991
GROUP BY e.emp_no
HAVING count(t.title) > 2
ORDER BY e.emp_no ASC;

/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/


SELECT e.emp_no,d.dept_no, count( s.salary ) AS "salarios"
FROM employees AS e
INNER JOIN salaries AS s ON e.emp_no = s.emp_no
INNER JOIN dept_emp AS d ON e.emp_no = d.emp_no
WHERE d.dept_no = 'd005'
GROUP BY e.emp_no, d.dept_no
HAVING count( s.salary ) > 15
ORDER BY salarios DESC


/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/


SELECT e.emp_no,e.first_name,e.last_name,count(d.dept_no) AS "cantidad de departamentos"
FROM employees AS e
INNER JOIN dept_emp AS d ON e.emp_no = d.emp_no
GROUP BY e.emp_no
HAVING count(d.dept_no) > 1
ORDER BY e.emp_no;
