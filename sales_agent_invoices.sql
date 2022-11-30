


SELECT 
   i.InvoiceId, 
   e.FirstName ||" "|| e.LastName AS FullName
   
FROM Invoice i
INNER JOIN Customer c   
    ON c.CustomerId = i.CustomerId
INNER JOIN Employee e 
    ON e.EmployeeId = c.SupportRepId;