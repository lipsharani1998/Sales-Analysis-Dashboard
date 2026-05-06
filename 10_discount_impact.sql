-- ============================================
-- Query 10: Impact of Discount on Profit
-- Shows: How different discount levels affect profit
-- ============================================

SELECT 
    CASE 
        WHEN discount = 0       THEN 'No Discount'
        WHEN discount <= 0.2    THEN 'Low (0-20%)'
        WHEN discount <= 0.4    THEN 'Medium (21-40%)'
        ELSE                         'High (40%+)'
    END                             AS Discount_Range,
    COUNT(order_id)                 AS Total_Orders,
    ROUND(SUM(sales), 2)            AS Total_Sales,
    ROUND(SUM(profit), 2)           AS Total_Profit
FROM SuperStoreOrders
GROUP BY Discount_Range
ORDER BY Total_Profit DESC;
