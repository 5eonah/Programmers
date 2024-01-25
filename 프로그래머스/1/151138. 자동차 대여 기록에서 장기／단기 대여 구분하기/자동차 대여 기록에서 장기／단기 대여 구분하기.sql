SELECT history_id, car_id, 
       TO_CHAR(start_date, 'YYYY-MM-DD') start_date,
       TO_CHAR(end_date, 'YYYY-MM-DD') end_date,
       CASE WHEN end_date-start_date+1>=30 THEN '장기 대여'
            ELSE '단기 대여' END rent_type
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE TO_CHAR(start_date, 'YYYY-MM')='2022-09'
ORDER BY history_id DESC