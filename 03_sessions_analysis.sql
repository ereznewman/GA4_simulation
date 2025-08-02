--Which traffic sources bring the most sessions(i.e facebook, google, etc')?

SELECT source,COUNT(*) AS visits FROM sessions
GROUP BY source
ORDER BY visits DESC


--What is the average session duration across all sessions?

SELECT AVG(end_time-start_time) AS average_duration FROM sessions

--How many sessions started from organic search vs direct vs referral?

SELECT medium,COUNT(*) sessions FROM sessions 
GROUP BY medium
ORDER BY sessions DESC

--Which day of the week has the highest session count?

SELECT TO_CHAR(start_time,'Day') AS Day, COUNT(*) AS sessions FROM sessions 
GROUP BY Day

--What is the average number of sessions per user?

SELECT AVG(session_count) AS avg_sessions_per_user
FROM (
    SELECT user_id, COUNT(*) AS session_count
    FROM sessions
    GROUP BY user_id
) AS user_sessions;
