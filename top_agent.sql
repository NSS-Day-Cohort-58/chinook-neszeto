/*Which sales agent made the most in sales over all?*/

SELECT
    FullName, 
    Max(Total_Sales) AS TotalSales
FROM
    (SELECT 
        e.FirstName ||" "|| e.LastName AS FullName,
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