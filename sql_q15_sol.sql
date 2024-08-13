-- 15. Write a SQL query to find the referees who booked the most number of players.
WITH bookings_count AS (
		SELECT COUNT(pb.player_id) AS bookings_count
        FROM player_booked pb
        JOIN match_mast mm ON pb.match_no = mm.match_no
        JOIN referee_mast rm ON mm.referee_id = rm.referee_id
        GROUP BY rm.referee_name
)
SELECT rm.referee_name
FROM player_booked pb
JOIN match_mast mm ON pb.match_no = mm.match_no
JOIN referee_mast rm ON mm.referee_id = rm.referee_id
GROUP BY rm.referee_name
HAVING COUNT(pb.player_id) = (
    SELECT MAX(bookings_count)
    FROM bookings_count);