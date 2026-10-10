-- Data check
SELECT COUNT(*) AS total_rows
FROM customer;


-- Q1. Total revenue by gender
SELECT
    gender,
    SUM(purchase_amount_usd) AS total_revenue
FROM customer
GROUP BY gender
ORDER BY total_revenue DESC;


-- Q2. Discount users who spent more than average
SELECT
    customer_id,
    purchase_amount_usd,
    discount_applied
FROM customer
WHERE discount_applied = 'Yes'
  AND purchase_amount_usd > (
      SELECT AVG(purchase_amount_usd)
      FROM customer
  )
ORDER BY purchase_amount_usd DESC


-- Q3. Top 5 products by average review rating
SELECT
    item_purchased,
    ROUND(AVG(review_rating)::numeric, 2) AS average_review_rating
FROM customer
GROUP BY item_purchased
ORDER BY average_review_rating DESC
LIMIT 5;


-- Q4. Average purchase amount by shipping type
SELECT
    shipping_type,
    ROUND(AVG(purchase_amount_usd), 2) AS average_purchase_amount
FROM customer
WHERE shipping_type IN ('Standard', 'Express')
GROUP BY shipping_type
ORDER BY average_purchase_amount DESC;


-- Q5. Subscriber vs Non-subscriber performance
SELECT
    subscription_status,
    COUNT(*) AS total_purchases,
    ROUND(AVG(purchase_amount_usd), 2) AS average_spend,
    SUM(purchase_amount_usd) AS total_revenue
FROM customer
GROUP BY subscription_status
ORDER BY total_revenue DESC;


-- Q6. Top 5 products by discount percentage
SELECT
    item_purchased,
    ROUND(
        100.0 * AVG(
            CASE
                WHEN discount_applied = 'Yes' THEN 1.0
                ELSE 0.0
            END
        ),
        2
    ) AS discount_percentage
FROM customer
GROUP BY item_purchased
ORDER BY discount_percentage DESC
LIMIT 5;


-- Q7. Customer Segmentation
SELECT
    CASE
        WHEN previous_purchases = 1 THEN 'New'
        WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
        WHEN previous_purchases > 10 THEN 'Loyal'
    END AS customer_segment,
    COUNT(*) AS customer_count
FROM customer
GROUP BY customer_segment
ORDER BY customer_count DESC


-- Q8. Top 3 products within each category
WITH ranked_products AS (
    SELECT
        category,
        item_purchased,
        COUNT(*) AS purchase_count,
        ROW_NUMBER() OVER (
            PARTITION BY category
            ORDER BY COUNT(*) DESC
        ) AS product_rank
    FROM customer
    GROUP BY category, item_purchased
)

SELECT
    category,
    item_purchased,
    purchase_count,
    product_rank
FROM ranked_products
WHERE product_rank <= 3
ORDER BY category, product_rank;


-- Q9. Repeat buyers by subscription status
SELECT
    subscription_status,
    COUNT(*) AS repeat_buyers
FROM customer
WHERE previous_purchases > 5
GROUP BY subscription_status
ORDER BY repeat_buyers DESC


-- Q10. Revenue by age group
SELECT
    age_group,
    SUM(purchase_amount_usd) AS total_revenue
FROM customer
GROUP BY age_group
ORDER BY age_group;

