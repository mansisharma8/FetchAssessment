#Brand with the Most Spend Among Users Who Were Created Within the Past 6 Months

SELECT b.name, SUM(r.total_spent) AS total_spend
FROM Receipts r
JOIN Users u ON r.user_id = u.user_id
JOIN Brands b ON r.brand_id = b.brand_id
WHERE u.created_date >= CURRENT_DATE - INTERVAL '6 months'
GROUP BY b.name
ORDER BY total_spend DESC
LIMIT 1;
