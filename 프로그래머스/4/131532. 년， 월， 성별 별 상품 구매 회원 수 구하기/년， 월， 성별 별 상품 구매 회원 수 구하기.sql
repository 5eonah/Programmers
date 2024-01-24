SELECT EXTRACT(YEAR FROM o.sales_date) year, EXTRACT(MONTH FROM o.sales_date) month, u.GENDER,
       COUNT(DISTINCT o.user_id) users
FROM user_info u JOIN online_sale o ON u.user_id=o.user_id
WHERE u.gender IS NOT NULL
GROUP BY EXTRACT(YEAR FROM o.sales_date), EXTRACT(MONTH FROM o.sales_date), gender
ORDER BY year, month, gender