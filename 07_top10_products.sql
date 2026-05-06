-- ============================================
-- Query 7: Top 10 Best Selling Products
-- Shows: Top products by Sales and Profit
-- ============================================

SELECT 
    product_name,
    category,
    ROUND(SUM(sales), 2)    AS Total_Sales,
    ROUND(SUM(profit), 2)   AS Total_Profit,
    SUM(quantity)            AS Units_Sold
FROM SuperStoreOrders
GROUP BY product_name, category
ORDER BY Total_Sales DESC
LIMIT 10;
