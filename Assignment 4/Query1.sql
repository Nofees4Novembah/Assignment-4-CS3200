--LastName and Email of customers who made purchase
SELECT DISTINCT
c.LastName as "Last Name",
c.Email as "Email"
FROM customers AS c
INNER JOIN invoices  AS i
ON i.CustomerId = c.CustomerId
WHERE i.CustomerId AND c.CustomerId IS NOT NULL
ORDER BY c.LastName ASC
