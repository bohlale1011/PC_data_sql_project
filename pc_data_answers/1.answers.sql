-- 1. Count total sales records
SELECT COUNT(*) AS total_sales_records
FROM [dbo].[1772542271737_pc_data]


-- 2. Count sales per Continent
SELECT continent, COUNT(*) AS total_sales
FROM [dbo].[1772542271737_pc_data]
GROUP BY continent;


-- 3. Count sales per Country or State
SELECT [Country_or_State], COUNT(*) AS total_sales
FROM [dbo].[1772542271737_pc_data]
GROUP BY [Country_or_State]


-- 4. List all distinct Shop Names
SELECT DISTINCT [Shop_Name]
FROM [dbo].[1772542271737_pc_data]


-- 5. Average Sale Price
SELECT AVG([Sale_Price]) AS average_sale_price
FROM [dbo].[1772542271737_pc_data]


-- 6. Highest and Lowest Sale Price
SELECT 
MAX([Sale_Price]) AS highest_sale_price,
MIN([Sale_Price]) AS lowest_sale_price
FROM [dbo].[1772542271737_pc_data]


-- 7. Sales by Payment Method
SELECT Payment_Method,COUNT(*) AS total_sales
FROM [dbo].[1772542271737_pc_data]
GROUP BY [Payment_Method]


-- 8. Sales by Channel
SELECT [Channel], COUNT(*) AS total_sales
FROM [dbo].[1772542271737_pc_data]
GROUP BY[Channel]


-- 9. Sales by Priority
SELECT [Priority], COUNT(*) AS total_sales
FROM [dbo].[1772542271737_pc_data]
GROUP BY [Priority]


-- 10. Count distinct PC Make values
SELECT COUNT(DISTINCT [PC_Make]) AS total_pc_makes
FROM [dbo].[1772542271737_pc_data]



-- 11. Total Revenue
SELECT SUM([Sale_Price]) AS total_revenue
FROM [dbo].[1772542271737_pc_data]


-- 12. Total Profit
SELECT SUM([Sale_Price] - [Cost_Price]) AS total_profit
FROM [dbo].[1772542271737_pc_data]


-- 13. Average Discount Amount
SELECT AVG([Discount_Amount]) AS average_discount
FROM [dbo].[1772542271737_pc_data]


-- 14. Total Finance Amount
SELECT SUM([Finance_Amount]) AS total_finance_amount
FROM [dbo].[1772542271737_pc_data]


-- 15. Total Revenue per PC Make
SELECT [PC_Make], SUM([Sale_Price]) AS total_revenue
FROM [dbo].[1772542271737_pc_data]
GROUP BY [PC_Make]
ORDER BY total_revenue DESC;


-- 16. Average Sale Price per Storage Type
SELECT [Storage_Type], AVG([Sale_Price]) AS average_sale_price
FROM [dbo].[1772542271737_pc_data]
GROUP BY [Storage_Type]


-- 17. Total Revenue per Shop Name
SELECT [Shop_Name], SUM([Sale_Price]) AS total_revenue
FROM[dbo].[1772542271737_pc_data]
GROUP BY [Shop_Name]
ORDER BY total_revenue DESC;


-- 18. Total Revenue per Sales Person Name
SELECT [Sales_Person_Name], SUM([Sale_Price]) AS total_revenue
FROM [dbo].[1772542271737_pc_data]
GROUP BY [Sales_Person_Name]
ORDER BY total_revenue DESC;


-- 19. Average Credit Score per Payment Method
SELECT [Payment_Method], AVG([Credit_Score]) AS average_credit_score
FROM [dbo].[1772542271737_pc_data]
GROUP BY [Payment_Method]


-- 20. Total Cost of Repairs per Sales Person Department
SELECT [Sales_Person_Department], SUM([Cost_of_Repairs]) AS total_repair_cost
FROM [dbo].[1772542271737_pc_data]
GROUP BY [Sales_Person_Department]


-- 21. Profit per Shop Name
SELECT 
[Shop_Name],
SUM([Sale_Price] - [Cost_Price]) AS profit
FROM [dbo].[1772542271737_pc_data]
GROUP BY [Shop_Name]
ORDER BY profit DESC;


-- 22. Profit Margin per Sale
SELECT 
[Customer_Name] ,
([Sale_Price] - [Cost_Price]) / "Sale Price"::numeric AS profit_margin
FROM [dbo].[1772542271737_pc_data]


-- 23. Continent with Highest Total Revenue
SELECT TOP 1 continent, SUM([Sale_Price]) AS total_revenue
FROM [dbo].[1772542271737_pc_data]
GROUP BY continent
ORDER BY total_revenue DESC



-- 24. Average Sale Price per RAM size
SELECT [RAM], AVG([Sale_Price]) AS average_sale_price
FROM [dbo].[1772542271737_pc_data]
GROUP BY [RAM]


-- 25. PC Model with Highest Sale Price
SELECT TOP 1 [PC_Model], [Sale_Price]
FROM [dbo].[1772542271737_pc_data]
ORDER BY [Sale_Price] DESC


-- 26. Average number of days between Purchase Date and Ship Date
SELECT AVG("Ship Date"::date - "Purchase Date"::date) AS average_shipping_days
FROM [dbo].[1772542271737_pc_data]
WHERE [Ship_Date] != 'N/A';


-- 27. Sales Person Department with Highest Revenue
SELECT TOP 1
[Sales_Person_Department],
SUM([Sale_Price]) AS total_revenue
FROM [dbo].[1772542271737_pc_data]
GROUP BY [Sales_Person_Department]
ORDER BY total_revenue DESC


-- 28. Total Revenue per Storage Capacity
SELECT [Storage_Capacity], SUM([Sale_Price]) AS total_revenue
FROM [dbo].[1772542271737_pc_data]
GROUP BY [Storage_Capacity]


-- 29. Sales where Sale Price is lower than PC Market Price
SELECT *
FROM [dbo].[1772542271737_pc_data]
WHERE [Sale_Price] < [PC_Market_Price]


-- 30. Rank Sales Person by Total Sales per Employee
SELECT 
[Sales_Person_Name],
SUM([Sale_Price]) AS total_sales,
RANK() OVER (ORDER BY SUM([Sale_Price]) DESC) AS sales_rank
FROM [dbo].[1772542271737_pc_data]
GROUP BY [Sales_Person_Name];