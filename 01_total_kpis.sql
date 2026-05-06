-- ============================================
-- Query 1: Total KPIs (Summary Metrics)
-- Shows: Total Sales, Profit, Quantity, Profit Margin
-- ============================================

SELECT 
    ROUND(SUM(sales), 2)                              AS Total_Sales,
    ROUND(SUM(profit), 2)                             AS Total_Profit,
    SUM(quantity)                                      AS Total_Quantity,
    ROUND(SUM(profit) / SUM(sales) * 100, 2)          AS Profit_Margin_Percentage
FROM SuperStoreOrders;
