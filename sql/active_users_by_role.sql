-- Active users by role (last 30 days)
SELECT role, COUNT(DISTINCT user_id) AS active_users
FROM user_activity
WHERE activity_time >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY role
ORDER BY active_users DESC;
