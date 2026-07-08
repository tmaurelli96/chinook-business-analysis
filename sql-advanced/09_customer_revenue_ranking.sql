/*
Business Question (ENG):
Rank customers by total spending.

Domanda di Business (ITA):
Classifica i clienti in base alla spesa totale sostenuta.
*/

SELECT
    c.CustomerId,
    c.FirstName,
    c.LastName,
    SUM(i.Total) AS Total_Spending,
    RANK() OVER (
        ORDER BY SUM(i.Total) DESC
    ) AS Customer_Rank
FROM customers c
INNER JOIN invoices i
    ON c.CustomerId = i.CustomerId
GROUP BY
    c.CustomerId,
    c.FirstName,
    c.LastName;
