-- 18. Write a SQL query to find the highest number of foul cards given in one match.
SELECT pb.match_no, COUNT(pb.player_id) AS foul_cards
FROM player_booked pb
GROUP BY pb.match_no
ORDER BY foul_cards DESC
LIMIT 1;
