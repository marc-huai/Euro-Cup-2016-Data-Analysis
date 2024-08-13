-- 8. Write a SQL query to find the match number for the game with the highest number of
-- penalty shots, and which countries played that match.
WITH penaltymatches AS (
	SELECT match_no
    FROM match_mast
    WHERE decided_By = 'P'
    ),
	 penaltysums AS (
	SELECT match_no, SUM(penalty_score) AS penalty_score_total
	FROM match_details
	WHERE match_no IN (SELECT match_no FROM penaltymatches)
	GROUP BY match_no
    )
    SELECT match_no
    FROM penaltysums
    WHERE penalty_score_total= (SELECT MAX(penalty_score_total) from penaltysums);
