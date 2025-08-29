-- Top API requests by count (last 7 days)
SELECT endpoint, COUNT(*) AS calls
FROM api_requests
WHERE request_time >= CURRENT_DATE - INTERVAL '7 days'
GROUP BY endpoint
ORDER BY calls DESC
LIMIT 20;
