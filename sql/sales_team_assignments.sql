SELECT
  manager,
  sales_person_id,
  sales_agent,
  TRIM(regional_office) AS regional_office
FROM sales_team
ORDER BY manager, sales_agent;