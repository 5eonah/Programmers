SELECT dr_name, dr_id, mcdp_cd, TO_CHAR(hire_ymd, 'YYYY-MM-DD') hire_ymd
FROM doctor
WHERE mcdp_cd in ('CS', 'GS')
ORDER BY 4 DESC, 1