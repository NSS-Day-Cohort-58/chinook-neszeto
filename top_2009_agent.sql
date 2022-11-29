/*Which sales agent made the most in sales in 2009*/

SELECT 
    FirstName, 
    LastName,
    MAX(Total_Sales) as TotalSales
from
    (SELECT 
        e.FirstName AS FirstName,
        e.LastName AS LastName,
        COUNT(il.InvoiceId) AS Total_Sales

    FROM Employee e 
    JOIN Customer c 
        ON e.EmployeeId = c.SupportRepId
    JOIN Invoice i 
        ON i.CustomerId = c.CustomerId
    JOIN InvoiceLine il 
        ON il.InvoiceId = i.InvoiceId
    WHERE i.InvoiceDate LIKE  "2009-%" 
    GROUP BY e.LastName)








