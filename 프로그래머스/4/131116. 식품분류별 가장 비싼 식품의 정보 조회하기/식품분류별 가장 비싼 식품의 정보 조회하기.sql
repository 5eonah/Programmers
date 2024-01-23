SELECT category, price, product_name
FROM (SELECT category, price, product_name,
             RANK() OVER(PARTITION BY category ORDER BY price DESC) rk
      FROM food_product)
WHERE rk=1 AND category IN ('과자', '국','김치', '식용유')
ORDER BY price DESC