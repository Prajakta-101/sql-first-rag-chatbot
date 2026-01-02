SELECT
  TRIM(regional_office) AS regional_office,
  manager,
  COUNT(*) AS agents_in_team,
  COUNT(*) OVER (PARTITION BY TRIM(regional_office)) AS agents_in_office
FROM sales_team
GROUP BY TRIM(regional_office), manager
ORDER BY regional_office, manager;
