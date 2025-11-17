📦 Inventory and Sales Management Dashboard

Overview

This project provides a data-driven system for monitoring and analyzing key Inventory and Sales performance indicators. By utilizing a relational database model (as defined in project_inventory.sql) and generating derived metrics, the solution offers critical insights into product performance, stock levels, customer behavior, and geographical sales distribution.

The primary goal is to support decision-making, such as optimizing inventory, identifying high-value products and customers, and managing supplier relationships efficiently.

Key Performance Indicators (KPIs)

The analysis focuses on several core business metrics derived from the raw data:

Metric

Value

Insight

Total Customers

500

Indicates the size of the active customer base.

Total Stock Quantity

197,751 units

The current combined inventory holding across all products.

Total Units Sold

100,477 units

Measures overall sales volume.

Total Products

200

The total number of unique products managed in the system.

Data Analysis Highlights

The core strength of this project lies in transforming raw transaction data into actionable business intelligence.

1. Sales and Revenue Performance

Category Revenue: Groceries generate the highest revenue, followed by Furniture, Clothing, and Electronics. This suggests Groceries are a crucial focus area for maximum turnover.

Top Selling Products (by Volume):

Saree 7 (747 units)

Bookshelf 6 (671 units)

Eggs 38 (659 units)

City-wise Sales Value:

Bangalore ($54.6 million) is the top-performing city in terms of total sales value.

This is followed by Mumbai, Hyderabad, Pune, and Delhi. This geographical breakdown is crucial for targeted marketing and distribution planning.

2. Inventory Management

Low Stock Alert: The system effectively flags products requiring immediate reorder (Stock Quantity $< 100$). Critical low-stock items include:

Oil 27 (23 units)

Office Chair 11 (26 units)

Mouse 39 (37 units)

Data Schema and Source Files

The analysis is built upon a standard relational schema comprising four main tables.

Source Files Included

File

Description

Schema/Columns (Examples)

Products.csv

Master list of products with inventory details.

ProductID, ProductName, Category, UnitPrice, StockQuantity, SupplierID

Customers.csv

Directory of customer information.

CustomerID, CustomerName, City, Phone

Sales.csv

Transaction log, linking products and customers to quantities sold.

SaleID, ProductID, CustomerID, Quantity, SaleDate

Suppliers.csv

Master list of product suppliers.

SupplierID, SupplierName, City, Phone

project_inventory.sql

Contains the SQL script used to define the database and generate all analytical queries (e.g., Top Selling Products, City-wise Sales Summary).



Dashboard Visualization

The following dashboard provides a visual summary of the key findings, including total stock, orders, customer count, and graphical representations of the sales distribution by city and product category.

Technologies

Database: SQL (Scripts provided in project_inventory.sql)

Data Analysis: Microsoft Excel (Output files provided as CSVs)

Visualization: Dashboard tool (as seen in the included image)
