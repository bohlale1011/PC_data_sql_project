
CREATE TABLE [PC_Sales_Data].[dbo].[pc_sales_fact](
[sales_id]INT IDENTITY(1,1) PRIMARY KEY,
[location_id]INT,
[employee_id]INT,
[date_id]INT,
[product_id]INT,
[store_id]INT,
[channel_id]INT,
[customer_id]INT,
[priority_id]INT,
[payment_method_id]INT,
[Cost_Price] [int] NOT NULL,
[Sale_Price] [int] NOT NULL,
[Discount_Amount] [int] NOT NULL,
[Finance_Amount] [nvarchar](50) NOT NULL,
[Credit_Score] [int] NOT NULL,
[Cost_of_Repairs] [nvarchar](50) NOT NULL,
[Total_Sales_per_Employee] [int] NOT NULL,
[PC_Market_Price] [int] NOT NULL,


--fact table constraints

CONSTRAINT fk_location_id FOREIGN KEY ([location_id]) references  [PC_Sales_Data].[dbo].[dim_location] ([location_id]),
CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) references  [PC_Sales_Data].[dbo].[dim_employee](employee_id),
CONSTRAINT fk_date_id FOREIGN KEY (date_id) references  [PC_Sales_Data].[dbo].[dim_date](date_id),
CONSTRAINT fk_product_id FOREIGN KEY (product_id) references  [PC_Sales_Data].[dbo].[dim_product](product_id),
CONSTRAINT fk_store_id FOREIGN KEY (store_id) references  [PC_Sales_Data].[dbo].[dim_store](store_id),
CONSTRAINT fk_channel_id FOREIGN KEY (channel_id) references  [PC_Sales_Data].[dbo].[dim_channel](channel_id),
CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) references  [PC_Sales_Data].[dbo].[dim_customer](customer_id),
CONSTRAINT fk_priority_id FOREIGN KEY (priority_id) references  [PC_Sales_Data].[dbo].[dim_priority](priority_id),
CONSTRAINT fk_payment_method_id FOREIGN KEY (payment_method_id) references  [PC_Sales_Data].[dbo].[dim_payment_method](payment_method_id),
)
--insert into fact table from raw data

INSERT INTO [PC_Sales_Data].[dbo].[pc_sales_fact](
Cost_Price,Sale_Price,Discount_Amount,Finance_Amount,Credit_Score,Cost_of_Repairs,Total_Sales_per_Employee,PC_Market_Price)
SELECT DISTINCT
Cost_Price,Sale_Price,Discount_Amount,Finance_Amount,Credit_Score,Cost_of_Repairs,Total_Sales_per_Employee,PC_Market_Price
FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data]


SELECT 
* FROM [PC_Sales_Data].[dbo].[pc_sales_fact]



