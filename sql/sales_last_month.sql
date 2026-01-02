SELECT 
    SUM(close_value) AS total_revenue,
    COUNT(*) AS number_of_deals
FROM sales_pipeline
WHERE 
    deal_stage = 'Won'
    AND DATE(close_date) >= DATE('now', '-1 month');