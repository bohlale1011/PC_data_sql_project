 --dim_payment_method
      
       CREATE TABLE [PC_Sales_Data].[dbo].[dim_payment_method](
       [Payment_method_id]INT IDENTITY(1,1) PRIMARY KEY,
       [Payment_Method] [nvarchar](50) NOT NULL
       )
       INSERT INTO [PC_Sales_Data].[dbo].[dim_payment_method](Payment_Method)
       SELECT DISTINCT Payment_Method
       FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data]
       
       SELECT * FROM [PC_Sales_Data].[dbo].[dim_payment_method] 
