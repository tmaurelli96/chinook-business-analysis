🇬🇧 Business Question
Which invoices have a total amount higher than the average invoice value?
🇮🇹 Domanda di Business
Quali fatture hanno un importo superiore al valore medio delle fatture?

SELECT InvoiceID, Total
FROM invoices i
WHERE i.Total > (
SELECT AVG(Total)
FROM invoices i
);
