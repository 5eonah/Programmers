WITH on_off_sales AS (
SELECT sales_date, product_id, user_id, sales_amount
FROM online_sale
WHERE TO_CHAR(sales_date, 'YYYY-MM')='2022-03'
UNION ALL
SELECT sales_date, product_id, NULL user_id, sales_amount
FROM offline_sale
WHERE TO_CHAR(sales_date, 'YYYY-MM')='2022-03')

SELECT TO_CHAR(sales_date, 'YYYY-MM-DD') sales_date, product_id, user_id, sales_amount
FROM on_off_sales
ORDER BY sales_date, product_id, user_id