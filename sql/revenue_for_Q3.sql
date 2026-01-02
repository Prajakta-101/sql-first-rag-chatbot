SELECT 
    SUM(close_value) AS total_revenue,
    COUNT(*) AS number_of_deals
FROM sales_pipeline
WHERE 
    deal_stage = 'Won'
    AND STRFTIME('%m', close_date) BETWEEN '07' AND '09'
    AND STRFTIME('%Y', close_date) = STRFTIME('%Y', 'now');