CREATE DATABASE InventorySalesDB;
USE InventorySalesDB;

#########################################################################################################################################################


# A) Top Selling Products

SELECT p.ProductName, SUM(s.Quantity) AS TotalSold
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSold DESC
LIMIT 10;


# Revenue Per Product
SELECT p.ProductName,
       SUM(s.Quantity * p.UnitPrice) AS TotalRevenue
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalRevenue DESC;


# Low Stock Alert (Reorder Needed)

SELECT ProductName, StockQuantity
FROM Products
WHERE StockQuantity < 100
ORDER BY StockQuantity ASC;


# Customer-wise Purchase Summary

SELECT c.CustomerName,
       COUNT(s.SaleID) AS TotalOrders,
       SUM(s.Quantity * p.UnitPrice) AS TotalSpent
FROM Sales s
JOIN Customers c ON s.CustomerID = c.CustomerID
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY c.CustomerName
ORDER BY TotalSpent DESC;



# City-wise Sales Summary

SELECT c.City,
       SUM(s.Quantity * p.UnitPrice) AS TotalSalesValue
FROM Sales s
JOIN Customers c ON s.CustomerID = c.CustomerID
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY c.City;


# Supplier-wise Product Cost Summary

SELECT sup.SupplierName,
       COUNT(p.ProductID) AS ProductsSupplied,
       SUM(p.UnitPrice) AS TotalInventoryValue
FROM Products p
JOIN Suppliers sup ON p.SupplierID = sup.SupplierID
GROUP BY sup.SupplierName;


#) Monthly Sales Summary View



select count(ProductName)
from products;

# orders
select sum(Quantity) from sales;

# Total_Stocks
select sum(StockQuantity) from products;


# total customer 
select count(customerName)
from customers;



