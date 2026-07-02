SELECT
    c.Country,
    SUM(i.Total) AS Revenue
FROM customers c
INNER JOIN invoices i
    ON c.CustomerId = i.CustomerId
GROUP BY c.Country
ORDER BY Revenue DESC
