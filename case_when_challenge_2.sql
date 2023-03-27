/*You need to find out how many flights have departed in the following seasons:
- Winter: December, January, February
- Spring: March, April, May
- Summer: June, July, August
- Fall: September, October, November*/

SELECT count(*) as flights,
CASE
	WHEN EXTRACT(month from scheduled_departure) = 12 THEN 'Winter'
	WHEN EXTRACT(month from scheduled_departure) < 3 THEN 'Winter'
	WHEN EXTRACT(month from scheduled_departure) < 6 THEN 'Spring'
	WHEN EXTRACT(month from scheduled_departure) < 9 THEN 'Summer'
	ELSE 'Fall'
END as season
FROM flights
GROUP BY season

