/*
https://leetcode.com/problems/customers-who-bought-all-products/?envType=study-plan-v2&envId=top-sql-50
The key insight is that a customer has bought all products if the count of distinct products they've purchased equals the total number of products in the Product table.
*/

SELECT customer_id FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT Customer.product_key) = (SELECT COUNT(*) FROM Product)
