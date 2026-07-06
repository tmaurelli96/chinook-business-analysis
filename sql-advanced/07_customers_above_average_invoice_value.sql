🇬🇧 Business Question
Which customers have a total spending greater than the average invoice value?
🇮🇹 Domanda di Business
Quali clienti hanno una spesa totale superiore al valore medio di una fattura?

SELECT
    c.FirstName,
    c.LastName,
    c.CustomerId,
    SUM(i.Total) AS Total_Spent
FROM customers c
INNER JOIN invoices i
    ON c.CustomerId = i.CustomerId
GROUP BY
    c.CustomerId,
    c.FirstName,
    c.LastName
HAVING
    SUM(i.Total) > (
        SELECT AVG(Total)
        FROM invoices
    );
