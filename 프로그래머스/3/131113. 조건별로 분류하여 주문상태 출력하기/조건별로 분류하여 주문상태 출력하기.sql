SELECT order_id, product_id, TO_CHAR(out_date, 'YYYY-MM-DD'),
       CASE WHEN TO_CHAR(out_date, 'YYYY-MM-DD')<='2022-05-01' THEN '출고완료'
            WHEN TO_CHAR(out_date, 'YYYY-MM-DD')>'2022-05-01' THEN '출고대기'
            WHEN out_date IS NULL THEN '출고미정' END "출고여부"
FROM FOOD_ORDER
ORDER BY order_id