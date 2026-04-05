-- =========================================
-- Sales Profitability Optimization Analysis
-- =========================================

-- Database Selection
USE sample_store;

-- Preview Data
SELECT * FROM Samplesuperstore_1;

-- =========================================
-- 1. Overall Company Performance
-- =========================================
SELECT 
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    SUM(Profit) / SUM(Sales) AS profit_margin
FROM Samplesuperstore_1;

-- Insight:
-- Company is profitable with approx 12% profit margin

-- =========================================
-- 2. Region Wise Analysis
-- =========================================
SELECT 
    Region, 
    SUM(Sales) AS total_sales, 
    SUM(Profit) AS total_profit
FROM Samplesuperstore_1
GROUP BY Region
ORDER BY total_profit ASC;

-- Insight:
-- Some regions are underperforming in profit

-- =========================================
-- 3. Loss Making Products
-- =========================================
SELECT 
    `Product Name`,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM Samplesuperstore_1
GROUP BY `Product Name`
HAVING total_profit < 0
ORDER BY total_profit ASC;

-- Insight:
-- Certain products are generating losses

-- =========================================
-- 4. Discount Impact Analysis
-- =========================================
SELECT 
    Discount,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM Samplesuperstore_1
GROUP BY Discount
HAVING total_profit < 0
ORDER BY total_profit ASC;

-- Insight:
-- High discounts are reducing profitability

-- =========================================
-- 5. Category Analysis
-- =========================================
SELECT 
    Region,
    Category,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    SUM(Profit) / SUM(Sales) AS profit_margin
FROM Samplesuperstore_1
GROUP BY Category, Region
ORDER BY total_profit, profit_margin ASC;

-- =========================================
-- 6. Sub-Category Loss Analysis
-- =========================================
SELECT 
    Region,
    `Sub-Category`,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    SUM(Profit) / SUM(Sales) AS profit_margin
FROM Samplesuperstore_1
GROUP BY `Sub-Category`, Region
HAVING total_profit < 0
ORDER BY total_profit, profit_margin ASC;

-- =========================================
-- 7. Segment Analysis
-- =========================================
SELECT 
    Segment,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    SUM(Profit) / SUM(Sales) AS profit_margin
FROM Samplesuperstore_1
GROUP BY Segment
ORDER BY total_profit ASC;

-- Insight:
-- Some customer segments are less profitable    




                                            

                                             




