SELECT c.car_id, c.car_type, (c.daily_fee*30)*((100-p.discount_rate)/100) as FEE
FROM CAR_RENTAL_COMPANY_CAR c JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY h
     ON c.car_id = h.car_id 
     JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN p
     ON c.car_type = p.car_type
WHERE c.car_type IN ('세단', 'SUV')
      AND p.duration_type = '30일 이상'
      AND c.car_id NOT IN (SELECT CAR_ID FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                           WHERE TO_CHAR(start_date,'YYYY-MM-DD')<='2022-11-30' 
                                 AND TO_CHAR(end_date,'YYYY-MM-DD')>='2022-11-01')
GROUP BY c.car_id, c.car_type, (c.daily_fee*30)*((100-p.discount_rate)/100)
HAVING (c.daily_fee*30)*((100-p.discount_rate)/100) BETWEEN 500000 AND 2000000
ORDER BY (c.daily_fee*30)*((100-p.discount_rate)/100) DESC, c.car_type, c.car_id