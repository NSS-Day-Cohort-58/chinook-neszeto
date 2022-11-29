/*Provide a query that shows the total number of invoices per country.*/


SELECT 
    COUNT(InvoiceId) AS Total_Invoices,
    BillingCountry
FROM Invoice
GROUP BY BillingCountry;