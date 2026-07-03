/* NOT practice 

all customers where not 55 or 20
*/

SELECT count(age) FROM customers
WHERE NOT age = 55 AND NOT age = 20;

