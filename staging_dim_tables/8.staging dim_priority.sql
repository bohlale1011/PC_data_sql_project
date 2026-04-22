--dim_priority
       
       CREATE TABLE [PC_Sales_Data].[dbo].[dim_priority](
       [Priority_id]INT IDENTITY(1,1) PRIMARY KEY,
       [Priority] [nvarchar](50) NOT NULL
       )
       INSERT INTO [PC_Sales_Data].[dbo].[dim_priority](Priority)
       SELECT DISTINCT Priority
       FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data]

       SELECT * FROM [PC_Sales_Data].[dbo].[dim_priority]
