-- ============================================
-- Query 9: Loss-Making Products
-- Shows: Products with negative profit (business risk)
-- ============================================

SELECT 
    product_name,
    category,
    ROUND(SUM(sales), 2)    AS Total_Sales,
    ROUND(SUM(profit), 2)   AS Total_Profit
FROM SuperStoreOrders
GROUP BY product_name, category
HAVING Total_Profit < 0
ORDER BY Total_Profit ASC;
