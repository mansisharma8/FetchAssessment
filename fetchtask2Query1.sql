
#Top 5 Brands by Receipts Scanned for Most Recent Month

SELECT b.name, COUNT(*) AS receipt_count
FROM Receipts r
JOIN Brands b ON r.brand_id = b.brand_id
WHERE r.date_scanned >= DATE_TRUNC('month', CURRENT_DATE) - INTERVAL '1 month'
  AND r.date_scanned < DATE_TRUNC('month', CURRENT_DATE)
GROUP BY b.name
ORDER BY receipt_count DESC
LIMIT 5;
