/*You want to create a tier list of movies
Tier 1: Rating is 'PG' or 'PG-13' or length is moer than 210 min:
	'Great rating or long (tier 1)'
Tier 2: Description contins 'Drama' and length is more than 90min:
	'Long drama (tier 2)'
Tier 3: Description contains 'Drama' and lengthis not more than 90min:
	'Short drama (tier 3)'
Tier 4: Rental_rate less than $1
	'Very cheap (tier 4)'

If a film can be in multiple tiers, put it in the better tier (lower number).
How can you filter to only those movies that appear in one of these 4 tiers? 

*/

SELECT title, 

CASE
	WHEN rating IN ('PG', 'PG-13') OR
		length > 210 THEN 'Great rating or long (tier 1)'
	WHEN description LIKE '%Drama%' AND length > 90 THEN 'Long drama (tier 2)'
	WHEN description LIKE '%Drama%' AND length > 90 THEN 'Short drama (tier 3)'
	WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
END

FROM film
WHERE rental_rate < 1 OR rating IN ('PG', 'PG-13') OR 
	description LIKE '%Drama%';


-- rating
-- length
-- description