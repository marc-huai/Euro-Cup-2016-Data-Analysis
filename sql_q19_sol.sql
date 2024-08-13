-- 19. Write a SQL query to find the number of captains who were also goalkeepers.
SELECT COUNT(DISTINCT mc.player_captain) AS captain_goalkeepers
FROM match_captain mc
JOIN player_mast pm ON mc.player_captain=pm.player_id
JOIN playing_position pp ON  pm.posi_to_play = pp.position_id
WHERE pp.position_desc = 'Goalkeepers';
