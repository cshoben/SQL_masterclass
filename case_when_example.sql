SELECT
COUNT(*),
CASE
WHEN actual_departure-scheduled_departure IS null THEN 'no departure time'
WHEN actual_departure-scheduled_departure < '00:05' THEN 'On time'
WHEN actual_departure-scheduled_departure < '01:00' THEN 'A little late'
ELSE 'Very late'
END AS is_late
FROM flights
GROUP BY is_late
