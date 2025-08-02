--Who are the top 5 users by number of sessions?

SELECT users.user_id,first_name,last_name,COUNT(*) AS sessions FROM users
INNER JOIN sessions ON users.user_id=sessions.user_id
GROUP BY users.user_id,first_name,last_name
ORDER BY sessions DESC
LIMIT 5

--How many distinct users visited the site in total?

SELECT DISTINCT COUNT(user_id) AS visitors FROM sessions

--Which users have the highest number of purchases (events)?

SELECT events.user_id,first_name,last_name,COUNT(event_type) AS purchases FROM events
INNER JOIN users on events.user_id=users.user_id
WHERE event_type='purchase'
GROUP BY events.user_id,first_name,last_name
ORDER BY purchases DESC

--What is the distribution of users by country?

SELECT country,COUNT(*) FROM users
GROUP BY country

--Which users have the longest average session duration?

SELECT users.user_id,first_name,last_name, SUM(end_time-start_time) AS duration FROM sessions
INNER JOIN users ON users.user_id=sessions.user_id
GROUP BY users.user_id,first_name,last_name
ORDER BY duration DESC
