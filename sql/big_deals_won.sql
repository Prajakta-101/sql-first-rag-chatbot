SELECT 
    opportunity_id,
    sales_agent,
    product,
    account,
    close_value,
    close_date
FROM sales_pipeline
WHERE 
    deal_stage = 'Won'
    AND close_value > 5000
ORDER BY close_value DESC;
