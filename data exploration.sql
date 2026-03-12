----Data exploration-- Understand the structure and size of the data
---Preview the sales data
SELECT TOP 10 * FROM Gold.fact_sales;

---- Count records in each table
SELECT COUNT(*) AS TotalSales 
FROM Gold.fact_sales;

SELECT COUNT(*) AS TotalProducts
FROM Gold.dim_products;

SELECT COUNT(*) AS TotalCustomers
FROM Gold.dim_customers;

----Check the date range of our dataset
SELECT 
   MIN(order_date) AS FirstOrder,
   MAX(order_date) AS LastOrder
FROM Gold.fact_sales;