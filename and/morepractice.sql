/* 
more filters



SELECT concat(firstname, ' ' ,lastname) AS "customers femeninas OR o NY", gender, state 
FROM customers 
WHERE (state = 'OR' OR state = 'NY' ) AND gender = 'F';

*/
/* coun total of femenine customers on NY and OR */

SELECT count( * ) AS "total"
FROM customers 
WHERE (state = 'OR' OR state = 'NY' ) AND gender = 'F';