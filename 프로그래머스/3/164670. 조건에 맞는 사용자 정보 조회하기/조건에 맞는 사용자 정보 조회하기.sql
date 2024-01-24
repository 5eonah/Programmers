SELECT u.user_id, u.nickname,
       CONCAT(u.city, ' ', u.street_address1, ' ', u.street_address2) "전체주소",
       CONCAT(LEFT(TLNO,3), '-', SUBSTR(TLNO,4, 4), '-',RIGHT(TLNO,4)) "전화번호"
FROM used_goods_board b JOIN used_goods_user u ON b.writer_id=u.user_id
GROUP BY 1
HAVING COUNT(u.user_id)>=3
ORDER BY 1 DESC