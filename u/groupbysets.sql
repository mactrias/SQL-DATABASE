/*
*  Calculate the total amount of employees per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/

SELECT dept_no, COUNT(emp_no)
FROM dept_emp
GROUP BY GROUPING SETS (
    (dept_no),
    ()
)
ORDER BY dept_no;

/*
*  Calculate the total average salary per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/


SELECT e.dept_no, ROUND(AVG(s.salary))
FROM dept_emp AS e
INNER JOIN salaries AS s ON e.emp_no = s.emp_no

GROUP BY GROUPING SETS (
    (e.dept_no),
    ()
    
)
ORDER BY e.dept_no;