-- 6. Write a SQL query to find the number of matches that were won by a single point, but
-- do not include matches decided by penalty shootout.
WITH DifferenceCTE AS (
	SELECT 
		match_no,
		goal_score - LAG(goal_score) OVER (PARTITION BY match_no ORDER BY match_no) AS difference
	FROM match_details
)
SELECT COUNT(dc.match_no) AS Number_of_Matches_Won_By_Single_Point
FROM DifferenceCTE dc
JOIN match_mast mm
ON dc.match_no = mm.match_no
WHERE dc.difference IN (-1,1) 
AND mm.decided_by <> 'P';	