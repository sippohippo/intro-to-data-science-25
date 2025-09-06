# Task 1

SELECT FirstName, LastName, HireDate
FROM Employees
WHERE HireDate > '1994-01-01'

# Task 2

SELECT CustomerID, COUNT(*)
FROM orders
GROUP BY CustomerID;

# Task 3

SELECT DISTINCT c.CompanyName
FROM Customers c
LEFT JOIN Orders o ON o.CustomerID = c.CustomerID
LEFT JOIN OrderDetails od ON o.OrderID = od.OrderID
WHERE ProductID = (SELECT ProductID FROM Products WHERE ProductName = 'Chai')

# Task 4

SELECT OrderID 
FROM Orders
WHERE ShippedDate IS NULL

# Task 5

SELECT CustomerID
FROM orders
GROUP BY CustomerID
ORDER BY COUNT(CustomerID) DESC
LIMIT 1