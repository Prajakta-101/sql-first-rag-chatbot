SELECT 
    opportunity_id,
    sales_agent,
    product,
    account,
    deal_stage,
    engage_date,
    close_date,
    close_value
FROM sales_pipeline
WHERE 
    deal_stage NOT IN ('Won', 'Lost')
ORDER BY close_date;
