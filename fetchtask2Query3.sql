#Average Spend from Receipts with 'Accepted' or 'Rejected' RewardsReceiptStatus

SELECT rewardsReceiptStatus, AVG(total_spent) AS average_spend
FROM Receipts
WHERE rewardsReceiptStatus IN ('Accepted', 'Rejected')
GROUP BY rewardsReceiptStatus;

