/*Which country's customers spent the most?*/


SELECT
    Country,
    MAX(TotalSpent) AS TotalSpent
FROM
    (SELECT 
        BillingCountry AS Country, 
        SUM(Total) AS TotalSpent
    FROM Invoice
    GROUP BY BillingCountry);