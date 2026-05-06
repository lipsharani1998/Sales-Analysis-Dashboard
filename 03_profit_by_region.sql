-- ============================================
-- Query 3: Profit by Region
-- Shows: Total Sales, Profit, Profit Margin per Region
-- ============================================

SELECT 
    region,
    ROUND(SUM(sales), 2)                          AS Total_Sales,
    ROUND(SUM(profit), 2)                         AS Total_Profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2)      AS Profit_Margin_Percentage
FROM SuperStoreOrders
GROUP BY region
ORDER BY Total_Profit DESC;
