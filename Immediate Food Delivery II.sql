/*
https://leetcode.com/problems/immediate-food-delivery-ii/description/?envType=study-plan-v2&envId=top-sql-50
*/

WITH first_order_dates AS (
    SELECT customer_id, MIN(order_date) AS first_order_date
    FROM Delivery
    GROUP BY customer_id
)

SELECT 
    d.customer_id,
    d.order_date,
    d.customer_pref_delivery_date,  
    CASE 
        WHEN d.order_date = d.customer_pref_delivery_date THEN 'immediate'
        ELSE 'scheduled' 
    END AS order_type
FROM Delivery d                    
INNER JOIN first_order_dates fod   
    ON d.customer_id = fod.customer_id          
    AND d.order_date = fod.first_order_date     
