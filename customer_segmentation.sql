/*
Customer Segmentation 
Categorize the customers by spending
*/
SELECT 
 CONCAT(c.first_name, ' ', c.last_name) AS Customer_name,
 SUM(f.sales_amount) AS Total_Spent,
 CASE
   WHEN SUM(f.sales_amount) > 5000
			THEN 'VIP'
   WHEN SUM(f.sales_amount) > 2000
            THEN 'Regular'
   ELSE 'Low Value'
 END AS Customer_Segment
FROM gold.fact_sales f
JOIN gold.dim_customers c 
	ON c.customer_key = f.customer_key
GROUP BY CONCAT(c.first_name, ' ', c.last_name);