SELECT p.product_code, SUM(p.price*o.sales_amount) sales
FROM PRODUCT p JOIN OFFLINE_SALE o ON p.product_id=o.product_id
GROUP BY p.product_code
ORDER BY sales DESC, p.product_code