-- top 5 customers

SELECT
TOP 5
 CONCAT(c.first_name, ' ', c.last_name) AS Customer_name,
 SUM(f.sales_amount) AS Revenue
 FROM gold.fact_sales f 
 JOIN gold.dim_customers c
 ON c.customer_key =f.customer_key
 GROUP BY CONCAT(C.first_name, ' ', c.last_name)
 ORDER BY Revenue DESC






 ---Top product by country

 SELECT * FROM (
 SELECT
    c.country,
    p.product_name,
    SUM(f.sales_amount) AS revenue,
    RANK()  OVER (PARTITION BY c.ciuntry ORDER BY SUM(f.sales_amount) DESC) AS rnk
    FROM gold.fact_sales f 
    JOIN gold.dim_customers c
    ON f.customer_key =c.customer_key
    
  JOIN gold.dim_products p
 ON f.product_key =p.product_key
 GROUP BY c.country, p.product_name
 )t
 WHERE rnk <=3;