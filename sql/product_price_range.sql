SELECT
  product,
  MIN(close_value) AS min_price,
  MAX(close_value) AS max_price,
  AVG(close_value) AS avg_price,
  COUNT(*)         AS deal_count
FROM sales_pipeline
WHERE deal_stage = 'Won'
GROUP BY product
ORDER BY avg_price DESC;
