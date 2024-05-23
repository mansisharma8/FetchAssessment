#Inconsistencies (e.g., in categorical data)

-- Check for inconsistencies in user roles
SELECT role, COUNT(*)
FROM Users
GROUP BY role;

-- Check for inconsistencies in receipt status
SELECT rewardsReceiptStatus, COUNT(*)
FROM Receipts
GROUP BY rewardsReceiptStatus;
