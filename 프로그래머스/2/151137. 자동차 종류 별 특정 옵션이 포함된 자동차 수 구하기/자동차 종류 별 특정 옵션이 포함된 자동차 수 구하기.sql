SELECT car_type, COUNT(car_id) cars
FROM car_rental_company_car
WHERE options like('%시트%')
GROUP BY car_type
ORDER BY car_type