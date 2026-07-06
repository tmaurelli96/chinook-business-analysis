🇬🇧 Business Question
What are the main sales KPIs by country?
🇮🇹 Domanda di Business
Quali sono i principali KPI commerciali per ciascun paese?

SELECT
    c.Country,
    COUNT(i.InvoiceId) AS Number_of_Invoices,
    SUM(i.Total) AS Total_Revenue,
    AVG(i.Total) AS Average_Invoice_Value
FROM customers c
INNER JOIN invoices i
    ON c.CustomerId = i.CustomerId
GROUP BY
    c.Country
ORDER BY
    Total_Revenue DESC;
