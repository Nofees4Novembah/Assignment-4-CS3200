-- States that have more than 10 customers
SELECT
c.State  AS "State"
FROM customers as c
WHERE c.State IS NOT NULL 
GROUP BY c.State 
HAVING COUNT(DISTINCT c.CustomerId) > 10
ORDER BY c.State ASC
