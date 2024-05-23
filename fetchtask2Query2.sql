# Comparison of the Top 5 Brands by Receipts Scanned for the Recent Month vs. the Previous Month

-- Top 5 Brands Last Month
WITH LastMonth AS (
  SELECT b.name, COUNT(*) AS receipt_count
  FROM Receipts r
  JOIN Brands b ON r.brand_id = b.brand_id
  WHERE r.date_scanned >= DATE_TRUNC('month', CURRENT_DATE) - INTERVAL '2 months'
    AND r.date_scanned < DATE_TRUNC('month', CURRENT_DATE) - INTERVAL '1 month'
  GROUP BY b.name
  ORDER BY receipt_count DESC
  LIMIT 5
),
ThisMonth AS (
  SELECT b.name, COUNT(*) AS receipt_count
  FROM Receipts r
  JOIN Brands b ON r.brand_id = b.brand_id
  WHERE r.date_scanned >= DATE_TRUNC('month', CURRENT_DATE) - INTERVAL '1 month'
    AND r.date_scanned < DATE_TRUNC('month', CURRENT_DATE)
  GROUP BY b.name
  ORDER BY receipt_count DESC
  LIMIT 5
)
SELECT 'Last Month' AS time_frame, lm.name, lm.receipt_count FROM LastMonth lm
UNION ALL
SELECT 'This Month' AS time_frame, tm.name, tm.receipt_count FROM ThisMonth tm;
