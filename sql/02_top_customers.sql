🇬🇧 Business Question
Who are the highest-spending customers?
🇮🇹 Domanda di Business
Quali sono i clienti con la maggiore spesa?

SELECT
    c.FirstName,
    c.LastName,
    SUM(i.Total) AS Total_Spent
FROM customers c
INNER JOIN invoices i
    ON c.CustomerId = i.CustomerId
GROUP BY
    c.CustomerId,
    c.FirstName,
    c.LastName
ORDER BY Total_Spent DESC
LIMIT 10;
