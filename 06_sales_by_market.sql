-- ============================================
-- Query 6: Sales by Market
-- Shows: Total Sales, Profit, Quantity per Market
-- ============================================

SELECT 
    market,
    ROUND(SUM(sales), 2)    AS Total_Sales,
    ROUND(SUM(profit), 2)   AS Total_Profit,
    SUM(quantity)            AS Total_Quantity
FROM SuperStoreOrders
GROUP BY market
ORDER BY Total_Sales DESC;
