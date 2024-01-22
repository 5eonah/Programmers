SELECT b.book_id, a.author_name, TO_CHAR(b.published_date, 'YYYY-MM-DD')
FROM BOOK b JOIN AUTHOR a on B.author_id=a.author_id
WHERE b.category = '경제'
ORDER BY published_date