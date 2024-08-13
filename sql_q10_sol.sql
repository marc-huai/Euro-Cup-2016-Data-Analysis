-- 10. Write a SQL query to find all available information about the players under contract to
-- Liverpool F.C. playing for England in EURO Cup 2016.
SELECT pm.*
FROM player_mast pm
JOIN soccer_team st ON pm.team_id = st.team_id
JOIN soccer_country sc ON st.team_id = sc.country_id
WHERE pm.playing_club = 'Liverpool'
AND sc.country_name = 'England';
