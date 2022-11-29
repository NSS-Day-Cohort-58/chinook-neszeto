/*Provide a query that shows total sales made by each sales agent. The resultant table should include:
Employee full name
Total sales for each employee (all time)*/


SELECT 
    e.FirstName,
    e.LastName,
    COUNT(il.InvoiceLineId) AS Total_Sales
FROM Employee e 
JOIN Customer c 
    ON e.EmployeeId = c.SupportRepId
JOIN Invoice i 
    ON i.CustomerId = c.CustomerId
JOIN InvoiceLine il 
    ON il.InvoiceId = i.InvoiceId
GROUP BY e.LastName;