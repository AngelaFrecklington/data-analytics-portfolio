/* Total sales by month */
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(sales) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;

/* Total sales by product */
SELECT 
    product,
    SUM(sales) AS total_sales
FROM sales
GROUP BY product 
ORDER BY total_sales DESC;

/* Total sales by region */
 select region,
sum(sales) As Total_Sales
from sales
group by region
order by Total_Sales;
