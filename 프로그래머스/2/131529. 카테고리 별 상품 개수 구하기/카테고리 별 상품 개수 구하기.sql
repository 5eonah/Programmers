SELECT SUBSTR(product_code, 1, 2) category, COUNT(product_id) products
FROM product
GROUP BY SUBSTR(product_code, 1, 2)
ORDER BY SUBSTR(product_code, 1, 2)