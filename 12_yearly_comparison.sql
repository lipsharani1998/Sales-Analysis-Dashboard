-- ============================================
-- Query 12: Yearly Sales Comparison
-- Shows: Year-over-year Sales, Profit and Quantity
-- ============================================

SELECT 
    STRFTIME('%Y', order_date)      AS Year,
    ROUND(SUM(sales), 2)            AS Total_Sales,
    ROUND(SUM(profit), 2)           AS Total_Profit,
    SUM(quantity)                    AS Total_Quantity
FROM SuperStoreOrders
GROUP BY STRFTIME('%Y', order_date)
ORDER BY Year ASC;
