--What are the most frequent event types overall?

SELECT event_type,COUNT(*) AS count FROM events
GROUP BY event_type
ORDER BY count DESC

--At what time of day do purchases occur?

SELECT event_timestamp FROM events
WHERE event_type='purchase'

--What percentage of users who added to cart ended up purchasing?

SELECT 
  ROUND(
    (COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END)::numeric
     / NULLIF(COUNT(DISTINCT CASE WHEN event_type = 'add_to_cart' THEN user_id END), 0)
    ) * 100, 2) AS percent_purchased_after_add_to_cart
FROM events;


--Which products are most interacted with (total events)?

SELECT products.product_name, COUNT(events.product_id) AS interactions FROM events
INNER JOIN products ON events.product_id=products.product_id
GROUP BY events.product_id, products.product_name
ORDER BY interactions DESC

