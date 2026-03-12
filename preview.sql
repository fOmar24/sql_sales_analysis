-- Data exploration 
--Preview the sale data 

SELECT TOP 10 * FROM Gold.fact_sales;

--count rec in each table 
SELECT COUNT (*) AS TotalSales
FROM Gold.fact_sales;

SELECT COUNT (*) AS TotalProducts
FROM Gold.dim_products;

SELECT COUNT (*) AS TotalCustomers
FROM Gold.dim_customers;


-- range of the data set 
SELECT 
 MIN(order_date) AS FirstOrder,
 MAX (order_date) AS LastOrder
 FROM Gold.fact_sales
