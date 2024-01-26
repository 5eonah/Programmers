WITH review_rank AS (
    SELECT member_id, RANK() OVER(ORDER BY COUNT(member_id) DESC) rk
    FROM rest_review
    GROUP BY member_id)
    
SELECT m.member_name, r.review_text, TO_CHAR(r.review_date,'YYYY-MM-DD')
FROM member_profile m JOIN rest_review r ON m.member_id=r.member_id
WHERE m.member_id IN (SELECT member_id FROM review_rank WHERE rk=1)
ORDER BY review_date, review_text;