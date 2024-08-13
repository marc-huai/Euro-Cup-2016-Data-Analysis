-- 20. Write a SQL query to find the substitute players who came into the field in the first
-- half of play, within a normal play schedule
SELECT pm.*
FROM player_in_out pin
JOIN player_mast pm ON pin.player_id = pm.player_id
WHERE pin.play_schedule = 'NT' AND pin.play_half = '1';