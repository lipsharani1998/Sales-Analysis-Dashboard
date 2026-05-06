-- ============================================
-- Query 5: Sales by Segment
-- Shows: Total Sales, Profit, Quantity per Segment
-- ============================================

SELECT 
    segment,
    ROUND(SUM(sales), 2)    AS Total_Sales,
    ROUND(SUM(profit), 2)   AS Total_Profit,
    SUM(quantity)            AS Total_Quantity
FROM SuperStoreOrders
GROUP BY segment
ORDER BY Total_Sales DESC;
