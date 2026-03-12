/*
Basic Business Metrics 
Key Performance Indicators for the company KPIS
*/

---Total Revenue
SELECT SUM(Sales_amount) AS TotalRevenue
FROM Gold.fact_sales;

---Total Orders
SELECT COUNT(DISTINCT Order_number) AS TotalOrders FROM Gold.fact_sales;

---Total Quantity Sold
SELECT SUM(quantity) AS TotalQuantitySold FROM Gold.fact_sales;

---Average order value
SELECT SUM(Sales_Amount) / COUNT(DISTINCT Order_number) AS avg_order_number
FROM gold.fact_sales;