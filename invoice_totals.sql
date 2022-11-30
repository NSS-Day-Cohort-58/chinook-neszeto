/*Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
Invoice Total
Customer Name
Customer Country
Sale Agent full name*/


SELECT 
   i.Total AS Invoice_Total,
   c.FirstName ||" "|| c.LastName AS Customer_Full_Name,
   c.Country AS Customer_Country,
   e.FirstName ||" "|| e.LastName AS Employee_Full_Name
FROM Invoice i
INNER JOIN Customer c   
    ON c.CustomerId = i.CustomerId
INNER JOIN Employee e 
    ON e.EmployeeId = c.SupportRepId;