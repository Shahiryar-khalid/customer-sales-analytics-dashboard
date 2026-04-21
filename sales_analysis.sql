
-- Query 1: Total revenue
SELECT ROUND(SUM(Sales), 2) AS total_revenue FROM sales;

-- Query 2: Total profit
SELECT ROUND(SUM(Profit), 2) AS total_profit FROM sales;

-- Query 3: Total orders
SELECT COUNT(DISTINCT OrderID) AS total_orders FROM sales;

-- Query 4: Monthly revenue trend
SELECT 
    strftime('%Y-%m', OrderDate) AS month,
    ROUND(SUM(Sales), 2) AS monthly_revenue
FROM sales
GROUP BY month
ORDER BY month;

-- Query 5: Top 10 products by revenue
SELECT 
    Product,
    ROUND(SUM(Sales), 2) AS revenue
FROM sales
GROUP BY Product
ORDER BY revenue DESC
LIMIT 10;

-- Query 6: Revenue by category
SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS revenue
FROM sales
GROUP BY Category
ORDER BY revenue DESC;

-- Query 7: Revenue by region
SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS revenue
FROM sales
GROUP BY Region
ORDER BY revenue DESC;

-- Query 8: Top 10 customers by revenue
SELECT 
    CustomerName,
    ROUND(SUM(Sales), 2) AS revenue
FROM sales
GROUP BY CustomerName
ORDER BY revenue DESC
LIMIT 10;

-- Query 9: Average order value
SELECT 
    ROUND(SUM(Sales) / COUNT(DISTINCT OrderID), 2) AS avg_order_value
FROM sales;

-- Query 10: Products with highest profit
SELECT 
    Product,
    ROUND(SUM(Profit), 2) AS total_profit
FROM sales
GROUP BY Product
ORDER BY total_profit DESC
LIMIT 10;
