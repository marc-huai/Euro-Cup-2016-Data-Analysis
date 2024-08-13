-- 12. Write a SQL query that returns the total number of goals scored by each position on
-- each country’s team. Do not include positions which scored no goals.
SELECT sc.country_name, pp.position_desc, COUNT(gd.goal_id) AS total_goals
FROM goal_details gd
JOIN player_mast pm ON gd.player_id = pm.player_id
JOIN playing_position pp ON pm.posi_to_play = pp.position_id
JOIN soccer_team st ON pm.team_id = st.team_id
JOIN soccer_country sc ON st.team_id = sc.country_id
GROUP BY sc.country_name, pp.position_desc
HAVING COUNT(gd.goal_id) > 0;