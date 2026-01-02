SELECT
  p.product_id,
  p.product,
  p.series,
  SUM(sp.close_value) AS total_sales_value,
  COUNT(*)            AS won_deals
FROM sales_pipeline AS sp
JOIN products AS p
  ON p.product_id = sp.product_id
WHERE sp.deal_stage = 'Won'
GROUP BY
  p.product_id,
  p.product,
  p.series
ORDER BY
  total_sales_value DESC,
  won_deals DESC;
