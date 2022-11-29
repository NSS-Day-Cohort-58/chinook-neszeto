/*How many Invoices were there in 2009 and 2011?*/


SELECT 
    STRFTIME( '%Y', InvoiceDate) AS Year,
    COUNT(InvoiceId) AS Total_Invoices
FROM Invoice
WHERE InvoiceDate LIKE "2009-%" OR InvoiceDate LIKE "2011-%"
GROUP BY Year; 





