/*What are the respective total sales for each of those years 2009, 2011?*/

SELECT 
    STRFTIME('%Y', InvoiceDate) AS Year,
    SUM(Total) AS TotalSales
FROM Invoice
WHERE InvoiceDate LIKE "2009-%" OR InvoiceDate LIKE "2011-%"
GROUP BY Year; 
