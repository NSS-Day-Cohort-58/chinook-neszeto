/*Which sales agent made the most in sales over all?*/

SELECT
    FirstName,
    LastName, 
    Max(Total_Sales) AS TotalSales
FROM
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
    GROUP BY e.LastName)
;