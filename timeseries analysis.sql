/*
Time Series Analysis 
How do the sales trend over time?
*/
----Monthly Revenue
SELECT 
  YEAR(order_date) AS year,
  MONTH(order_date) AS month,
  SUM(sales_amount) AS revenue
FROM gold.fact_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;