-- 16. Write a SQL query to find referees and the number of matches they worked in each
-- venue.
SELECT rm.referee_name, sv.venue_name, COUNT(mm.match_no) AS match_count
FROM match_mast mm
JOIN referee_mast rm ON mm.referee_id = rm.referee_id
JOIN soccer_venue sv ON mm.venue_id = sv.venue_id
GROUP BY rm.referee_name, sv.venue_name;
