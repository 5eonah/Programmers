SELECT DISTINCT u.user_id, u.nickname,
       u.city||' '||u.street_address1||' '||u.street_address2 "전체주소",
       SUBSTR(TLNO, 1, 3)||'-'||SUBSTR(TLNO,4, 4)||'-'||SUBSTR(TLNO, 8, 4)"전화번호"
FROM used_goods_board b JOIN used_goods_user u ON b.writer_id=u.user_id
WHERE u.user_id IN (SELECT writer_id FROM used_goods_board 
                    GROUP BY writer_id HAVING COUNT(writer_id)>=3)
ORDER BY user_id DESC;