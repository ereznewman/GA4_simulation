--What are the most frequent event types overall?

SELECT event_type,COUNT(*) AS count FROM events
GROUP BY event_type
ORDER BY count DESC

--Which users triggered the highest number of purchase events?

--How does event frequency vary by hour of day?

--What percentage of sessions included an add_to_cart event?

--How many events are recorded per product?
