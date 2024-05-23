#Brand with the Most Transactions Among Users Who Were Created Within the Past 6 Months

SELECT b.name, COUNT(r.receipt_id) AS transaction_count
FROM Receipts r
JOIN Users u ON r.user_id = u.user_id
JOIN Brands b ON r.brand_id = b.brand_id
WHERE u.created_date >= CURRENT_DATE - INTERVAL '6 months'
GROUP BY b.name
ORDER BY transaction_count DESC
LIMIT 1;
