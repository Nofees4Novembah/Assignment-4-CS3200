--Number of Unique customers from each state
SELECT
c.State  AS "State",
COUNT(DISTINCT c.CustomerId) AS "Number of Customers"
FROM customers as c
WHERE c.State IS NOT NULL
GROUP BY c.State
ORDER BY c.State ASC
