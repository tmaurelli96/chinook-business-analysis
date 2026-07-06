Business Question (ENG)

Create a customer spending summary and display customers ordered by total spending.

Business Question (ITA)

Crea un riepilogo della spesa dei clienti e visualizza i clienti ordinati per spesa totale.

WITH CustomerSpendingSummary AS (

    SELECT
        i.CustomerId,
        c.FirstName,
        c.LastName,
        SUM(i.Total) AS Total_spending
    FROM Customers c
    INNER JOIN invoices i
        ON c.CustomerId = i.CustomerId
    GROUP BY
        i.CustomerId,
        c.FirstName,
        c.LastName
)

SELECT *
FROM CustomerSpendingSummary
ORDER BY Total_spending DESC;
