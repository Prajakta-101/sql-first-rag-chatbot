SELECT
  product_id,
  product,
  TRIM(series) AS series,
  sales_price
FROM products
ORDER BY series, product;
