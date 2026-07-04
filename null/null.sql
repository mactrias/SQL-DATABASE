/*
 db: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
*/

/* clean nulls from name  and lastname  */
SELECT
    COALESCE(name, 'Sin nombre') AS firstname,
    COALESCE(lastName, 'Sin apellido') AS lastname
FROM "Student";
 