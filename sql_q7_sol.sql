-- 7. Write a SQL query to find all the venues where matches with penalty shootouts were
-- played.
WITH penaltyvenues AS (
	SELECT DISTINCT(venue_id)
	FROM match_mast
	WHERE decided_by = 'P'
)
SELECT *
FROM soccer_venue
WHERE venue_id IN (SELECT * FROM penaltyvenues)
ORDER BY venue_id;
