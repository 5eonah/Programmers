SELECT EXTRACT(MONTH FROM start_date) month, car_id, COUNT(car_id) records
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE EXTRACT(MONTH FROM start_date) BETWEEN 8 AND 10
      AND car_id IN (SELECT car_id FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                     WHERE EXTRACT(MONTH FROM start_date) BETWEEN 8 AND 10
                     GROUP BY car_id HAVING COUNT(car_id)>=5)
GROUP BY EXTRACT(MONTH FROM start_date), car_id
HAVING COUNT(car_id) != 0
ORDER BY month, car_id DESC;