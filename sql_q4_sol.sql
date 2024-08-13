-- 4. Write a SQL query to compute a list showing the number of substitutions that
-- happened in various stages of play for the entire tournament.
SELECT COUNT(in_out)
FROM player_in_out;