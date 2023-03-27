/*Find out how many tickets you have sold in the following categories:
	- Low price ticket: total_amount <20,000
	- Mid price ticket: total_amount between 20,000 and 150,000
	- High price ticket: total_amount >= 15,000
How many high price tickets has the company sold?*/

SELECT
count(*),
CASE
	WHEN total_amount < 20000 THEN 'low price ticket'
	WHEN total_amount < 150000 THEN 'mid price ticket'
	ELSE 'high price ticket'
END AS ticket_price
FROM bookings
GROUP BY ticket_price
