-- Error rate by day (last 14 days)
SELECT DATE(event_time) AS day,
       COUNT(*) FILTER (WHERE level = 'ERROR')::float / NULLIF(COUNT(*),0) AS error_rate
FROM app_logs
WHERE event_time >= CURRENT_DATE - INTERVAL '14 days'
GROUP BY DATE(event_time)
ORDER BY day DESC;
