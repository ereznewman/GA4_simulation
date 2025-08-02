--What are the most frequent event types overall?

SELECT event_type,COUNT(*) AS count FROM events
GROUP BY event_type
ORDER BY count DESC


