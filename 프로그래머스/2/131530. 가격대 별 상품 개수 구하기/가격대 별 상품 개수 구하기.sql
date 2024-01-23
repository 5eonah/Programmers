SELECT FLOOR(price/10000)*10000 PRICE_GROUP, COUNT(product_id) products
FROM product
GROUP BY FLOOR(price/10000)*10000
ORDER BY price_group;