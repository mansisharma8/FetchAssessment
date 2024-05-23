#Total Number of Items Purchased from Receipts with 'Accepted' or 'Rejected' RewardsReceiptStatus

SELECT rewardsReceiptStatus, SUM(items_purchased) AS total_items_purchased
FROM Receipts
WHERE rewardsReceiptStatus IN ('Accepted', 'Rejected')
GROUP BY rewardsReceiptStatus;
