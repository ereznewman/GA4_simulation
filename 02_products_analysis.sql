--What are the top 5 products viewed most often?

SELECT events.product_id,product_name,COUNT(*) AS product_views FROM events
INNER JOIN products ON events.product_id = products.product_id
WHERE event_type='page_view'
GROUP BY events.product_id,product_name
ORDER BY product_views DESC
LIMIT 5

--Which products have the highest number of add_to_cart events?

SELECT events.product_id,product_name,COUNT(*) AS product_add FROM events
INNER JOIN products ON events.product_id = products.product_id
WHERE event_type='add_to_cart'
GROUP BY events.product_id,product_name
ORDER BY product_add DESC

--How many unique users interacted with each product?

SELECT events.product_id,product_name,COUNT(DISTINCT events.user_id) AS users FROM events
INNER JOIN products ON events.product_id = products.product_id
GROUP BY events.product_id,product_name
ORDER BY users DESC

--What is the average price of products by category?

--Which products resulted in the highest purchase events?
