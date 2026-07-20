/* average salary per department */ 

SELECT
    s.emp_no,
    s.salary,
    d.dept_name,
    ROUND(
        AVG(s.salary) OVER (
            PARTITION BY d.dept_name
        )
    ) AS avg_dept_salary
FROM salaries s
JOIN dept_emp de
    ON s.emp_no = de.emp_no
JOIN departments d
    ON de.dept_no = d.dept_no
WHERE s.to_date = '9999-01-01'
  AND de.to_date = '9999-01-01'
ORDER BY s.emp_no;