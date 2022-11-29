/*Provide a query that shows all Invoices. The resultant table should include:
InvoiceId
The total number of line items on each invoice*/


SELECT 
    InvoiceId,
    COUNT(InvoiceLineId) AS Total_Line_Items
FROM InvoiceLine
GROUP BY InvoiceId;