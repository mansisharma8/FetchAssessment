#Duplicates

-- Check for duplicate user entries
SELECT user_id, COUNT(*)
FROM Users
GROUP BY user_id
HAVING COUNT(*) > 1;

-- Check for duplicate receipts
SELECT receipt_id, COUNT(*)
FROM Receipts
GROUP BY receipt_id
HAVING COUNT(*) > 1;

-- Check for duplicate brands
SELECT brand_id, COUNT(*)
FROM Brands
GROUP BY brand_id
HAVING COUNT(*) > 1;
