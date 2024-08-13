-- 14. Write a SQL query to find referees and the number of bookings they made for the
-- entire tournament. Sort your answer by the number of bookings in descending order.
SELECT rm.referee_name, COUNT(pb.player_id) AS bookings_count
FROM player_booked pb
JOIN match_mast mm ON pb.match_no = mm.match_no
JOIN referee_mast rm ON mm.referee_id = rm.referee_id
GROUP BY rm.referee_name
ORDER BY bookings_count DESC;