/*What are the respective total sales for each of those years 2009, 2011?*/

SELECT 
    SUM(Total)
FROM Invoice
WHERE InvoiceDate LIKE "2009-%"; 

SELECT 
    SUM(Total)
FROM Invoice
WHERE InvoiceDate LIKE "2011-%"; 