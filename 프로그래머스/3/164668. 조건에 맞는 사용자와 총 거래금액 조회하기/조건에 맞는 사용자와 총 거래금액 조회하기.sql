SELECT u.user_id, u.nickname, SUM(b.price) total_sales
FROM used_goods_board b JOIN used_goods_user u ON b.writer_id=u.user_id
WHERE STATUS='DONE'
GROUP BY user_id, nickname
HAVING SUM(b.price)>=700000
ORDER BY total_sales