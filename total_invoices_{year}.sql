/*How many Invoices were there in 2009 and 2011?*/


SELECT 
    COUNT(InvoiceDate)
FROM Invoice
WHERE InvoiceDate LIKE "2009-%"; 



SELECT 
    COUNT(InvoiceDate)
FROM Invoice
WHERE InvoiceDate LIKE "2011-%"; 
