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


/*
*  Show the population per continent
*  Database: World
*  Table: Country
*/

SELECT DISTINCT
    continent,
    SUM(population) OVER (
        PARTITION BY continent
    ) AS continent_population
FROM country;



/*
*  To the previous query add on the ability to calculate the percentage of the world population
*  What that means is that you will divide the population of that continent by the total population and multiply by 100 to get a percentage.
*  Make sure you convert the population numbers to float using `population::float` otherwise you may see zero pop up
*  Try to use CONCAT AND ROUND to make the data look pretty
*
*  Database: World
*  Table: Country
*/


SELECT DISTINCT
    continent,
    SUM(population) OVER (
        PARTITION BY continent
    ) AS continent_population,

    CONCAT(
        ROUND(
            (
                SUM(population::FLOAT) OVER (
                    PARTITION BY continent
                )
                /
                SUM(population::FLOAT) OVER ()
            ) * 100
        ),
        '%'
    ) AS continent_percentage

FROM country;



/*
*  Count the number of towns per region
*
*  Database: France
*  Table: Regions (Join + Window function)
*/

SELECT DISTINCT "r"."name", count( t.id ) OVER(PARTITION BY r.code) AS "town per region"
FROM regions AS r
JOIN departments AS d ON r.code = d.region
JOIN towns AS t ON d.code = t.department
ORDER BY "town per region"