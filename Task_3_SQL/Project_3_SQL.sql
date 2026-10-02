-- Data Analytics Project 3
-- SQL Server Queries
-- 1. SELECT--
SELECT *
FROM dbo.[Dataset for Data Analytics (2)];


-- 2. WHERE ( Laptop)--
SELECT *
FROM dbo.[Dataset for Data Analytics (2)]
WHERE Product = 'Laptop';


-- 3. WHERE (Quantity greater than 3)--
SELECT *
FROM dbo.[Dataset for Data Analytics (2)]
WHERE Quantity > 3;


-- 4. ORDER BY--
SELECT OrderID, Product, Quantity, TotalPrice
FROM dbo.[Dataset for Data Analytics (2)]
ORDER BY TotalPrice DESC;


-- 5. GROUP BY + COUNT---
SELECT Product, COUNT(*) AS TotalOrders
FROM dbo.[Dataset for Data Analytics (2)]
GROUP BY Product;


-- 6. SUM--
SELECT SUM(TotalPrice) AS TotalSales
FROM dbo.[Dataset for Data Analytics (2)];


-- 7. AVG--
SELECT AVG(UnitPrice) AS AverageUnitPrice
FROM dbo.[Dataset for Data Analytics (2)];


-- 8. Combined analysis--
SELECT
    Product,
    COUNT(*) AS TotalOrders,
    SUM(TotalPrice) AS TotalSales,
    AVG(UnitPrice) AS AverageUnitPrice
FROM dbo.[Dataset for Data Analytics (2)]
GROUP BY Product
ORDER BY TotalSales DESC;
