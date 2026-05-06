-- ============================================
-- Query 11: Sales by Order Priority
-- Shows: Sales and Profit split by order priority level
-- ============================================

SELECT 
    order_priority,
    COUNT(order_id)                 AS Total_Orders,
    ROUND(SUM(sales), 2)            AS Total_Sales,
    ROUND(SUM(profit), 2)           AS Total_Profit
FROM SuperStoreOrders
GROUP BY order_priority
ORDER BY Total_Sales DESC;
