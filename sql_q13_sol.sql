-- 13. Write a SQL query to find all the defenders who scored a goal for their teams.
SELECT DISTINCT(pm.player_name), sc.country_name
FROM goal_details gd
JOIN player_mast pm ON gd.player_id = pm.player_id
JOIN playing_position pp ON pm.posi_to_play = pp.position_id
JOIN soccer_team st ON pm.team_id = st.team_id
JOIN soccer_country sc ON st.team_id = sc.country_id
WHERE pp.position_desc = 'Defenders'
ORDER BY sc.country_name,pm.player_name;
