SELECT
  sales_person_id,
  sales_agent,
  manager,
  TRIM(regional_office) AS regional_office
FROM sales_team
ORDER BY regional_office, manager, sales_agent;
