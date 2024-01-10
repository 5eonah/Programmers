SELECT car_type, COUNT(car_id) cars
FROM car_rental_company_car
WHERE REGEXP_LIKE(options, '통풍시트|열선시트|가죽시트')
GROUP BY car_type
ORDER BY car_type