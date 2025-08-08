use orders_data;
----Table data import Wizard----
SELECT * FROM orders;
SELECT * FROM orders
WHERE Quantity > 10;
SELECT * FROM orders
ORDER BY UnitPrice DESC;
SELECT ProductNo, SUM(Quantity) AS Total_Quantity
FROM orders
GROUP BY ProductNo;
SELECT * FROM orders
WHERE UnitPrice > (
    SELECT AVG(UnitPrice) FROM orders
);
SELECT SUM(UnitPrice * Quantity) AS Total_Revenue FROM orders;
SELECT CustomerID, AVG(Quantity) AS Avg_Quantity
FROM orders
GROUP BY CustomerID;
CREATE VIEW customer_spending AS
SELECT CustomerID, SUM(UnitPrice * Quantity) AS Total_Spent
FROM orders
GROUP BY CustomerID;
SELECT * FROM customer_spending
ORDER BY Total_Spent DESC;
CREATE INDEX idx_customer ON orders(CustomerID);
SELECT CustomerID, SUM(Quantity) AS TotalQuantity
FROM orders
GROUP BY CustomerID
ORDER BY TotalQuantity DESC;
CREATE TABLE products (
    ProductNo VARCHAR(20) PRIMARY KEY,
    ProductName VARCHAR(100)
);
DESCRIBE orders;
CREATE VIEW CustomerRevenue AS
SELECT CustomerID, SUM(UnitPrice * Quantity) AS TotalRevenue
FROM orders
GROUP BY CustomerID;
CREATE INDEX idx_unitprice ON orders(UnitPrice);