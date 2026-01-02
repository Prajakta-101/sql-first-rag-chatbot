SELECT 
    opportunity_id,
    sales_agent,
    product,
    account,
    deal_stage,
    close_date,
    close_value
FROM sales_pipeline
WHERE 
    deal_stage = 'Lost'
    AND STRFTIME('%Y', close_date) = STRFTIME('%Y', 'now', '-1 year');
