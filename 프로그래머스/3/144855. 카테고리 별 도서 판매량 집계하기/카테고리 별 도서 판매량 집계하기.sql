SELECT b.category, SUM(s.sales) total_sales
FROM BOOK b JOIN BOOK_SALES s ON b.book_id=s.book_id
WHERE TO_CHAR(s.sales_date, 'YYYY-MM')='2022-01'
GROUP BY b.category
ORDER BY b.category;