SELECT DISTINCT
  manager
FROM sales_team
WHERE TRIM(regional_office) = ?
ORDER BY manager;
