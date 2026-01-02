SELECT
  product AS product_name,
  TRIM(series) AS series,
  sales_price
FROM products
ORDER BY product_name;
