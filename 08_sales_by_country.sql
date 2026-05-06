-- ============================================
-- Query 8: Sales by Country
-- Shows: Total Sales and Profit per Country and Region
-- ============================================

SELECT 
    country,
    region,
    ROUND(SUM(sales), 2)    AS Total_Sales,
    ROUND(SUM(profit), 2)   AS Total_Profit
FROM SuperStoreOrders
GROUP BY country, region
ORDER BY Total_Sales DESC;
