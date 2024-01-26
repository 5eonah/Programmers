SELECT a.author_id, a.author_name, b.category, SUM(b.price*s.sales) total_sales
FROM author a JOIN book b ON a.author_id=b.author_id JOIN book_sales s ON b.book_id=s.book_id
WHERE TO_CHAR(s.sales_date, 'YYYY-MM')='2022-01'
GROUP BY a.author_id, a.author_name, b.category
ORDER BY author_id, category DESC