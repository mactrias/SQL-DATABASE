/*
* DB: Store
* Table: orders
* Question: How many orders were made by customer 7888, 1082, 12808, 9623
*/

SELECT customerid, COUNT(orderid) AS "cantidad de veces"
FROM orders
WHERE customerid IN (7888, 1082, 12808, 9623)
GROUP BY customerid;



/*
* DB: World
* Table: city
* Question: How many cities are in the district of Zuid-Holland, Noord-Brabant and Utrecht?
*/

SELECT district, count( district) AS "cantidad de veces" FROM city
WHERE district IN ('Zuid-Holland', 'Noord-Brabant', 'Utrecht')
GROUP BY district;