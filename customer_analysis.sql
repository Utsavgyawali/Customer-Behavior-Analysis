SELECT *
FROM customer limit 20;

SELECT gender, SUM(purchase_amount)
FROM customer
GROUP BY gender;

SELECT customer_id, purchase_amount, discount_applied
FROM customer
WHERE discount_applied = 'Yes'
AND purchase_amount > (
        SELECT AVG(purchase_amount)
        FROM customer);
        
SELECT item_purchased, ROUND(AVG(review_rating), 2) AS avg_reviewrating
FROM customer 
GROUP BY item_purchased
ORDER BY avg_reviewrating DESC LIMIT 5;

SELECT shipping_type, Avg(purchase_amount)
FROM customer
WHERE  shipping_type IN ('Standard' , 'Express')
GROUP BY shipping_type;

SELECT subscription_status, AVG(purchase_amount) AS avg_spend , SUM(purchase_amount)
FROM customer
GROUP BY subscription_status;

SELECT item_purchased, ROUND(100 * SUM(
	CASE 
		WHEN discount_applied = "Yes" 	
			THEN 1 
				ELSE 0 
END) / COUNT(*),2)    AS discount_rate
FROM customer
GROUP BY item_purchased 
ORDER BY discount_rate DESC
LIMIT 5;


WITH customer_type AS(
			SELECT customer_id, previous_purchases,
				CASE
					WHEN previous_purchases = 1 THEN 'New'
					WHEN previous_purchases BETWEEN 2 AND 11 THEN 'Returning'
					ELSE 'Loyal'
					END AS customer_segment
            FROM  customer  
)
		SELECT customer_segment,count(*) AS number_of_customers  
        FROM customer_type
        GROUP BY customer_segment;

WITH item_counts AS(
		SELECT category, item_purchased, COUNT(customer_id) AS total_orders,
				ROW_NUMBER() OVER(PARTITION BY category ORDER BY COUNT(customer_id) DESC) AS item_rank
        FROM customer
        GROUP BY category, item_purchased
)
SELECT item_rank, category, item_purchased, total_orders
FROM item_counts
WHERE item_rank <=3;

SELECT subscription_status AS subscribed,
COUNT(customer_id) AS repeat_buyers
FROM customer
WHERE previous_purchases > 5
GROUP BY subscription_status ;


SELECT age_group, SUM(purchase_amount) AS total_revenues
FROM customer
GROUP BY age_group
ORDER BY total_revenues DESC;
