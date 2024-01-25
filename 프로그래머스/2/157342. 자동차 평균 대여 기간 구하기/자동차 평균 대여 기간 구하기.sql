SELECT car_id, ROUND(AVG(end_date-start_date+1),1) average_duration
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY car_id
HAVING AVG(end_date-start_date+1)>=7
ORDER BY average_duration DESC, car_id DESC