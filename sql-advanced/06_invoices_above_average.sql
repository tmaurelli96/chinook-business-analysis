SELECT InvoiceID, Total
FROM invoices i
WHERE i.Total > (
SELECT AVG(Total)
FROM invoices i
);
