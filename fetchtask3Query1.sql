#Missing Values

-- Check for missing values in the Users table
SELECT COUNT(*) AS total_rows,
       COUNT(user_id) AS user_id_count,
       COUNT(created_date) AS created_date_count,
       COUNT(last_login) AS last_login_count
FROM Users;

-- Check for missing values in the Receipts table
SELECT COUNT(*) AS total_rows,
       COUNT(receipt_id) AS receipt_id_count,
       COUNT(user_id) AS user_id_count,
       COUNT(date_scanned) AS date_scanned_count,
       COUNT(total_spent) AS total_spent_count
FROM Receipts;

-- Check for missing values in the Brands table
SELECT COUNT(*) AS total_rows,
       COUNT(brand_id) AS brand_id_count,
       COUNT(name) AS name_count
FROM Brands;
