-- 17. Write a SQL query to find the country where the most assistant referees come from,
-- and the count of the assistant referees.
SELECT sc.country_name, COUNT(arm.ass_ref_id) AS assistant_referees_count
FROM asst_referee_mast arm
JOIN soccer_country sc ON arm.country_id = sc.country_id
GROUP BY sc.country_name
ORDER BY assistant_referees_count DESC
LIMIT 1;