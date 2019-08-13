SELECT FirstName, LastName, Country
FROM Customer
WHERE NOT Country = 'USA' 

SELECT FirstName, LastName, Country
FROM Customer
WHERE Country = 'Brazil' 

SELECT C.FirstName, C.LastName, I.InvoiceId, I.InvoiceDate, I.BillingCountry
FROM Customer C
JOIN Invoice I
ON C.CustomerId = i.CustomerId
WHERE Country = 'Brazil' 

SELECT FirstName, LastName, Title
FROM Employee 
WHERE Title LIKE '%agent%'

SELECT DISTINCT BillingCountry
FROM Invoice

SELECT InvoiceId, E.FirstName, E.LastName
FROM Invoice
JOIN Customer 
ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee E
ON Customer.SupportRepId = E.EmployeeId

SELECT InvoiceId, I.Total, i.BillingCountry, C.FirstName AS "Customer First Name", C.LastName AS "Customer Last Name", E.FirstName AS "Employee First Name", E.LastName AS "Employee Last Name"
FROM Invoice I
JOIN Customer C
ON I.CustomerId = C.CustomerId
JOIN Employee E
ON C.SupportRepId = E.EmployeeId

SELECT YEAR(InvoiceDate) as "Invoice Year", COUNT(YEAR(InvoiceDate)) AS "Invoices Per Year"
FROM Invoice
GROUP BY YEAR(InvoiceDate)