


SELECT 
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry, 
    c.FirstName,
    c.LastName
FROM Invoice i
INNER JOIN Customer c
    ON i.CustomerId = c.CustomerId
WHERE c.country = "Brazil"; 


