USE exercise;

SELECT Name AS Customers
FROM Customers
WHERE Customers.id NOT IN (SELECT CustomerId FROM Orders);