CREATE DATABASE Bike_sales;
USE Bike_sales;

Select * from bike_sales;

-- Find the total profit for all records:
SELECT SUM(Profit) AS Total_Profit
FROM bike_sales;

-- Get the average unit cost and unit price for the 'Hitch Rack - 4-Bike' product:
SELECT AVG(Unit_Cost) AS Avg_Cost, AVG(Unit_Price) AS Avg_Price
FROM bike_sales
WHERE Product = 'Hitch Rack - 4-Bike';

-- List the total revenue for each year:
SELECT Year, SUM(Revenue) AS Total_Revenue
FROM bike_sales
GROUP BY Year
ORDER BY Year ASC;

-- Count the number of orders made by young adults (25-34) and adults (35-64):
SELECT Age_Group, COUNT(*) AS Order_Count
FROM bike_sales
WHERE Age_Group IN ('Young Adults (25-34)', 'Adults (35-64)')
GROUP BY Age_Group;



