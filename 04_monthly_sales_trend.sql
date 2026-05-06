-- ============================================
-- Query 4: Monthly Sales Trend
-- Shows: Sales and Profit per Month (for line chart)
-- ============================================

SELECT 
    STRFTIME('%Y-%m', order_date)   AS Month,
    ROUND(SUM(sales), 2)             AS Monthly_Sales,
    ROUND(SUM(profit), 2)            AS Monthly_Profit
FROM SuperStoreOrders
GROUP BY STRFTIME('%Y-%m', order_date)
ORDER BY Month ASC;
