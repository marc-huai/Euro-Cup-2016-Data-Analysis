-- 9. Write a SQL query to find the goalkeeper’s name and jersey number, playing for
-- Germany, who played in Germany’s group stage matches.
SELECT DISTINCT(pm.player_name), pm.jersey_no
FROM player_mast pm
JOIN playing_position pp ON pm.posi_to_play = pp.position_id
JOIN match_details md on pm.player_id=md.player_gk
JOIN match_mast mm ON md.match_no=mm.match_no
JOIN soccer_team st ON pm.team_id = st.team_id
WHERE st.team_id = (
    SELECT country_id
    FROM soccer_country
    WHERE country_name = 'Germany'
) 
AND mm.play_stage = 'G'
AND pp.position_desc = 'Goalkeepers';