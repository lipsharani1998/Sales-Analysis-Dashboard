-- ============================================
-- Query 2: Sales by Category
-- Shows: Total Sales, Profit, Quantity per Category
-- ============================================

SELECT 
    category,
    ROUND(SUM(sales), 2)    AS Total_Sales,
    ROUND(SUM(profit), 2)   AS Total_Profit,
    SUM(quantity)            AS Total_Quantity
FROM SuperStoreOrders
GROUP BY category
ORDER BY Total_Sales DESC;
