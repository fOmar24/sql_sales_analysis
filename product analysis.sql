/*
Product Performance Analysis
What are top performing products?
*/
-- identifying the top products.
SELECT 
 p.product_name,
 SUM(f.sales_amount) AS Revenue,
 RANK() OVER (
   ORDER BY SUM (f.sales_amount) DESC
   )
   product_rank
   FROM gold.fact_sales f
JOIN gold.dim_products p 
   ON f.product_key = p.product_key
GROUP BY p.product_name



SELECT 
 p.product_name,
 SUM(f.sales_amount) AS Revenue,
 SUM(f.quantity) AS Units_Sold
FROM gold.fact_sales f
JOIN gold.dim_products p 
   ON f.product_key = p.product_key
GROUP BY p.product_name
ORDER BY Revenue DESC;