SELECT book_id, TO_CHAR(published_date,'YYYY-MM-DD') published_date
FROM BOOK
WHERE TO_CHAR(published_date,'YYYY')='2021' AND category='인문'
ORDER BY published_date