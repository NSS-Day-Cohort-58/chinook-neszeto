


SELECT 
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry, 
    c.FirstName ||" "|| c.LastName AS FullName
FROM Invoice i
INNER JOIN Customer c
    ON i.CustomerId = c.CustomerId
WHERE c.country = "Brazil"; 


