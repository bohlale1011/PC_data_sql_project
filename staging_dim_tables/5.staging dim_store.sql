 --dim_store
        
        CREATE TABLE [PC_Sales_Data].[dbo].[dim_store](
        [Store_id] INT IDENTITY(1,1) PRIMARY KEY,
        [Shop_Name] [nvarchar](50) NOT NULL,
        [Shop_Age] [nvarchar](50) NOT NULL
        )    
        INSERT INTO [PC_Sales_Data].[dbo].[dim_store](Shop_Name,Shop_Age)
        SELECT DISTINCT Shop_Name,Shop_Age
        FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data] 

        SELECT * FROM [PC_Sales_Data].[dbo].[dim_store]