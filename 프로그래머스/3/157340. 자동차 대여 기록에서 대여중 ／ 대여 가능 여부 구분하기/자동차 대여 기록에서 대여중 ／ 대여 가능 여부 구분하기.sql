SELECT DISTINCT car_id, 
       CASE WHEN car_id IN (SELECT car_id FROM car_rental_company_rental_history
                            WHERE TO_DATE(20221016, 'YYYY-MM-DD') BETWEEN start_date AND end_date)
            THEN '대여중'
            ELSE '대여 가능' END AVAILABILITY
FROM car_rental_company_rental_history
ORDER BY car_id DESC