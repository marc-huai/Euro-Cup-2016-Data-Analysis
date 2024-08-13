-- 11. Write a SQL query to find the players, their jersey number, and playing club who were
-- the goalkeepers for England in EURO Cup 2016.
SELECT DISTINCT(pm.player_name), pm.jersey_no, pm.playing_club
FROM player_mast pm
JOIN playing_position pp ON pm.posi_to_play = pp.position_id
JOIN match_details md on pm.player_id=md.player_gk
JOIN soccer_team st ON pm.team_id = st.team_id
JOIN soccer_country sc ON st.team_id = sc.country_id
WHERE sc.country_name = 'England';